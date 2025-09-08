<?php

namespace App\Http\Controllers;

use App\Models\Invoice;
use App\Models\InvoiceDetail;
use App\Models\Delivery;
use App\Models\DeliveryMovement;
use App\Models\DeliveryTrack;
use App\Models\Bank;
use App\Models\Product;
use App\Models\Sequence;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Symfony\Component\VarDumper\Caster\RedisCaster;

class CartController extends Controller
{
    private array $cart;
    public function __construct() {
        $this->cart = session()->get('cart', []);
    }
    public function index() {
        $cart = $this->cart;
        return view('client.shopping.index', compact('cart'));
    }
    public function add(Request $request) {
        $product = Product::findOrFail($request->id);
        if(isset($this->cart[$product->id])) {
            return back()->with('info', 'El producto seleccionado, ya ha sido añadido a su carrito.');
        } else {
            $this->cart[$product->id] = [
                'id' => $product->id,
                'category_id' => $product->category_id,
                'name' => $product->name,
                'description' => $product->description,
                'sales_price' => $product->sales_price,
                'quantity' => 1,
                'link_image' => $product->link_image
            ];
            session()->put('cart', $this->cart);
            $this->calculateTotalCart();
            return back()->with('info', 'El producto seleccionado fue agregado a su carrito con éxito.');
        }
    }
    public function update(Request $request) {
        $product = Product::findOrFail($request->id);
        $quantity = $request->quantity;
        if(isset($this->cart[$product->id])) {
            $this->cart[$product->id]['quantity'] = $quantity;
            session()->put('cart', $this->cart);
            $this->calculateTotalCart();
        }
        return back()->with('info', 'El Producto seleccionado fue actualizado con éxito.');
    }
    public function remove(Request $request) {
        $product = Product::findOrFail($request->id);
        if(isset($this->cart[$product->id])) {
            unset($this->cart[$product->id]);
            session()->put('cart', $this->cart);
            $this->calculateTotalCart();
        }
        return back()->with('info', 'El Producto seleccionado fue eliminado con éxito.');
    }
    public function clear() {
        session()->forget('cart');
        session()->forget('amountCart');
        return back()->with('info', 'El carrito se ha limpiado con éxito.');
    }
    private function calculateTotalCart() {
        $amountCart = collect($this->cart)->sum(fn($item) => $item['sales_price'] * $item['quantity']);
        session()->put('amountCart', $amountCart);
    }
    //PROCESAMIENTO PARA PASARELLA DE PAGOS
    public function paymentStep01() {
        $cart = $this->cart;
        return view('client.shopping.payment-step01', compact('cart'));
    }
    public function paymentStep02() {
        $cart = $this->cart;
        $ubigeos = DB::table('ubigeos')
            ->where('province_code', '=', '00')
            ->where('district_code', '=', '00')
            ->get();
        $deliveryTypes = DB::table('delivery_types')->get();
        return view('client.shopping.payment-step02', compact('cart', 'deliveryTypes', 'ubigeos'));
    }
    public function paymentStep02Store(Request $request) {
        session()->put('delivery_type', $request->delivery_type_id);
        session()->put('receive', $request->receive);
        session()->put('department_code', $request->department_code);
        session()->put('province_code', $request->province_code);
        session()->put('district_code', $request->district_code);
        $ubigeo = DB::table('ubigeos')
            ->where('department_code', '=', $request->department_code)
            ->where('province_code', '=', $request->province_code)
            ->where('district_code', '=', $request->district_code)
            ->get()[0];
        session()->put('ubigeo_id', $ubigeo->id);
        session()->put('address', $request->address);
        session()->put('address_num1', $request->num1);
        session()->put('address_num2', $request->num2);
        session()->put('latitude', $request->latitude);
        session()->put('longitude', $request->longitude);
        return redirect('payment/completed');
    }
    public function paymentStep03() {
        $cart = $this->cart;
        $cardTypes = DB::table('card_types')->get();
        $banks = DB::table('banks')->get();
        $documentTypes = DB::table('document_types')->get();
        return view('client.shopping.payment-step03', compact('cart', 'cardTypes', 'banks', 'documentTypes'));
    }
    public function paymentStep03Store(Request $request) {
        session()->put('card_type', $request->card_type_id);
        session()->put('bank', $request->bank_id);
        session()->put('card_number', $request->card_number);
        session()->put('card_expire', $request->card_expire);
        session()->put('card_cvv', $request->card_cvv);
        session()->put('document_type_id', $request->document_type_id);
        session()->put('document_number', $request->document_number);
        return redirect('payment/finalized');
    }
    public function paymentStep04() {
        //PROCESAMIENTO PARA GENERAR CORRELATIVO
        $sequence = Sequence::find(2);
        $numCurrent = $sequence->correlative;
        $value = substr($numCurrent,5,8);
        $next = intval($value) + 1;
        $numNew = 'F001-' . str_pad($next, 8, '0', STR_PAD_LEFT);
        $sequence->correlative = $numNew;
        $sequence->save();
        //PROCESAMIENTO PARA GENERAR CORRELATIVO TRACKING DE ENVIO
        $sequence = Sequence::find(3);
        $numCurrentT = $sequence->correlative;
        $valueT = substr($numCurrentT,5,8);
        $nextT = intval($valueT) + 1;
        $numNewT = 'TR25-' . str_pad($nextT, 8, '0', STR_PAD_LEFT);
        $sequence->correlative = $numNewT;
        $sequence->save();
        //PROCESAMIENTO PARA GENERAR DOCUMENTO DE VENTA
        $invoice = new Invoice();
        $invoice->id = $numNew;
        $invoice->customer_id = session('customer_id');
        $invoice->type = 'F';
        $invoice->issued_at = '2025-08-15';
        $invoice->expired_at = '2025-09-15';
        $invoice->tax = 18.00;
        $invoice->ind_action = 'B';
        $invoice->ind_status = 1;
        $invoice->save();
        //PROCESAMIENTO PARA GENERAR DETALLE DE DOCUMENTO DE VENTA
        $carts = $this->cart;
        foreach($carts as $item) {
            $invoiceDetail = new InvoiceDetail();
            $invoiceDetail->invoice_id = $numNew;
            $invoiceDetail->product_id = $item['id'];
            $invoiceDetail->service_id = 0;
            $invoiceDetail->price = $item['sales_price'];
            $invoiceDetail->quantity = $item['quantity'];
            $invoiceDetail->amount = $item['sales_price'] * $item['quantity'];
            $invoiceDetail->save();
        }
        //PROCESAMIENTO PARA GENERAR EL DELIVERY
        $delivery = new Delivery();
        $delivery->invoice_id = $numNew;
        $delivery->document_type_id = session('document_type_id');
        $delivery->delivery_type_id = session('delivery_type');
        $delivery->ubigeo_id = session('ubigeo_id');
        $delivery->receive = session('receive');
        $delivery->document_number = session('document_number');
        $delivery->address = session('address');
        $delivery->address_num1 = session('address_num1');
        $delivery->address_num2 = session('address_num2');
        $delivery->latitude = session('latitude');
        $delivery->longitude = session('longitude');
        $delivery->ind_status = 1;
        $delivery->save();

        $delivery = DB::table('deliveries')->where('invoice_id', '=', $numNew)->get()[0];
        $deliveryId = $delivery->id;

        $deliveryMovement = new DeliveryMovement();
        $deliveryMovement->delivery_id = $deliveryId;
        $deliveryMovement->remarks = 'En proceso de atención';
        $deliveryMovement->type = 'EP';
        $deliveryMovement->ind_status = 1;
        $deliveryMovement->save();

        $deliveryTrack = new DeliveryTrack();
        $deliveryTrack->id = $numNewT;
        $deliveryTrack->delivery_id = $deliveryId;
        $deliveryTrack->save();
        
        //LIMPIAR SESIONES
        session()->forget('cart');
        session()->forget('amountCart');
        return redirect('payment/invoice/' . $numNew);
    }
    public function paymentStep05($id) {
        return view('client.shopping.payment-step04', compact('id'));
    }
}
