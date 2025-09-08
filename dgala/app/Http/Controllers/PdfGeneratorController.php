<?php

namespace App\Http\Controllers;

use App\Models\Invoice;
use App\Models\InvoiceDetail;
use App\Models\DocumentType;
use App\Models\Customer;
use App\Models\Product;
use Illuminate\Http\Request;
use Barryvdh\DomPDF\Facade\Pdf;
use SimpleSoftwareIO\QrCode\Facades\QrCode;
use Illuminate\Support\Facades\DB;

class PdfGeneratorController extends Controller
{
    public function index($id) 
    {
        $num = $id;
        $company = DB::table('companies')->get()[0];
        $invoice = Invoice::find($num);
        $invoiceDetails = DB::table('invoice_details AS OD')
            ->select(
                'OD.id', 'OD.invoice_id', 'OD.product_id', 'P.name', 'P.description',  
                'OD.price', 'OD.quantity', 'OD.amount'
            )
            ->join('products AS P', 'P.id', '=', 'OD.product_id')
            ->where('OD.invoice_id', '=', $num)
            ->get();
        $amountSales = 0.0;
        foreach($invoiceDetails as $item) {
            $amountSales += $item->price;
        }
        $amountTax = $amountSales * 0.18;
        $amountTotal = $amountSales + $amountTax;
        $customer = Customer::find($invoice->customer_id);
        $documentType = DocumentType::find($customer->document_type_id);

        $delivery = DB::table('deliveries')->where('invoice_id', '=', $num)->get()[0];
        $deliveryTrack = DB::table('delivery_tracks')->where('delivery_id', '=', $delivery->id)->get()[0];

        $dataCode = 'Nº Factura: ' . $num;
        $dataCode .= ' | Cliente: ' . $customer->first_name . ' ' . $customer->last_name;
        $dataCode .= ' | Importe Venta: S/. ' . number_format($amountSales, 2);
        $dataCode .= ' | IGV(18.00 %): S/. ' . number_format($amountTax, 2);
        $dataCode .= ' | Importe Total: S/. ' . number_format($amountTotal, 2);
        $dataCode .= ' | Fecha Emisión: ' . $invoice->issued_at;
        $dataCode .= ' | Fecha Vencimiento: ' . $invoice->expired_at;
        $dataCode .= ' | Nº Tracking: ' . $deliveryTrack->id;

        $qrCodes = QrCode::size(120)->style('square')->generate($dataCode);
        $qrCodesImg = QrCode::size(120)->format('png')->generate($dataCode);
        $qrCodesImgTrack = QrCode::size(120)->format('png')->generate($deliveryTrack->id);
        $data = [
            'qrCode'        => $qrCodes,
            'qrCodeImg'     => $qrCodesImg,
            'qrCodeImgTrack' => $qrCodesImgTrack,
            'num'           => $num,
            'invoice'         => $invoice,
            'invoiceDetails'  => $invoiceDetails,
            'amountSales'   => $amountSales,
            'amountTax'     => $amountTax,
            'amountTotal'   => $amountTotal,
            'customer'      => $customer,
            'documentType'  => $documentType,
            'company'       => $company,
            'delivery'      => $delivery,
            'deliveryTrack' => $deliveryTrack
        ];
        $pdf = Pdf::loadView('pdf.invoice', $data);
        return $pdf->stream('invoice.pdf');
        //return view('pdf.invoice', $data);
    }
}
