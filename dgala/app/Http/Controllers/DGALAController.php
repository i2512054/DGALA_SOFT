<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Customer;
use App\Models\DocumentType;
use App\Models\Product;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;

class DGALAController extends Controller
{
    function index() {
        session()->put('catalog-view-type', 'grid');
        session()->put('catalog-filter-type', '');
        session()->put('catalog-filter-categories', '');
        session()->put('catalog-filter-prices', '');
        $products = Product::inRandomOrder()->limit(3)->get();
        return view('client.home.index', compact('products'));
    }
    function aboutUs() {
        return view('client.aboutus.index');
    }
    function catalog() {
        $categories = Category::all();
        $categoriesParent = DB::table('categories')
            ->orwhere('category_id', '=', 1)
            ->get();
        $products = DB::table('products AS p')
            ->select(
                'p.id', 'p.category_id', 'c.name AS category_name', 'p.name', 'p.description',
                'p.sales_price', 'p.quantity', 'p.link_image', 'p.ind_status', 'p.created_at', 'p.updated_at'
            )
            ->join('categories AS c', 'c.id', '=', 'p.category_id')
            ->paginate(6);
        return view('client.products.index', compact('products', 'categories', 'categoriesParent'));
    }
    function catalogFilter(Request $request) {
        session()->put('catalog-view-type', $request->viewType);
        session()->put('catalog-filter-type', $request->filterType);
        session()->put('catalog-filter-categories', $request->filterCategories);
        session()->put('catalog-filter-prices', $request->filterPrices);
        return back()->with('info', 'Filtros');
        /*$categories = Category::all();
        $categoriesParent = DB::table('categories')
            ->orwhere('category_id', '=', 1)
            ->get();
        $products = DB::table('products AS p')
            ->select(
                'p.id', 'p.category_id', 'c.name AS category_name', 'p.name', 'p.description',
                'p.sales_price', 'p.quantity', 'p.link_image', 'p.ind_status', 'p.created_at', 'p.updated_at'
            )
            ->join('categories AS c', 'c.id', '=', 'p.category_id')
            ->paginate(6);
        return view('client.products.index', compact('products', 'categories', 'categoriesParent'));*/
    }
    function catalogDetail($id) {
        $product = Product::find($id);
        $category = Category::find($product->id);
        return view('client.products.detail', compact('product', 'category'));
    }
    function service() {
        return view('client.services.index');
    }
    function contactUs() {
        return view('client.contactus.index');
    }
    function contactUsConfirm() {
        return view('client.contactus.confirm');
    }
    function register() {
        $ubigeos = DB::table('ubigeos')
            ->where('province_code', '=', '00')
            ->where('district_code', '=', '00')
            ->get();
        $documentTypes = DocumentType::all();
        return view('client.register.index', compact('documentTypes', 'ubigeos'));
    }
    function registerConfirm(Request $request) {
        $customer = new Customer();
        $customer->document_type_id = 1;
        $customer->ubigeo_id = 1428;//$request->ubigeo_id;
        $customer->document_number = '';
        $customer->first_name = $request->first_name;
        $customer->middle_name = $request->middle_name;
        $customer->last_name = $request->last_name;
        $customer->email = $request->email;
        $customer->phone_number = $request->phone_number;
        $customer->address = '';//$request->address;
        $customer->access = $request->access;
        $customer->ind_status = 1;
        $customer->save();
        return view('client.register.confirm');
    }
    function signIn() {
        return view('client.signin.index');
    }
    function shopping() {
        return view('client.shopping.index');
    }
    function dashboard() {
        return view('client.dashboard.index');
    }
    function account() {
        $customer = DB::table('customers')->where('id', '=', session('customer_id'))->get()[0];
        $ubigeo = DB::table('ubigeos')->where('id', '=', $customer->ubigeo_id)->get()[0];
        $documentTypes = DB::table('document_types')->get();
        $departments = DB::table('ubigeos')
            ->where('province_code', '=', '00')
            ->where('district_code', '=', '00')
            ->get();
        $provinces = DB::table('ubigeos')
            ->where('department_code', '=', $ubigeo->department_code)
            ->where('province_code', '<>', '00')
            ->where('district_code', '=', '00')
            ->get();
        $districts = DB::table('ubigeos')
            ->where('department_code', '=', $ubigeo->department_code)
            ->where('province_code', '=', $ubigeo->province_code)
            ->where('district_code', '<>', '00')
            ->get();
        return view('client.account.index', compact('documentTypes', 'customer', 'ubigeo', 'departments', 'provinces', 'districts'));
    }
    function accountUpdate($id, Request $request) {
        $customer = Customer::find($id);
        $customer->document_type_id = $request->document_type_id;
        $customer->ubigeo_id = $request->ubigeo_id;
        $customer->document_number = $request->document_number;
        $customer->first_name = $request->first_name;
        $customer->middle_name = $request->middle_name;
        $customer->last_name = $request->last_name;
        $customer->email = $request->email;
        $customer->phone_number = $request->phone_number;
        $customer->address = $request->address;
        $customer->ind_status = 1;
        $customer->save();
        return back()->with(['info' => 'Sus datos fueron actualizados con éxito']);
    }
    function accountPassword($id, Request $request) {
        $customer = Customer::find($id);
        $customer->access = $request->access;
        $customer->save();
        return back()->with(['info' => 'Sus datos fueron actualizados con éxito']);
    }
    function invoice() {
        $invoices = DB::table('invoices')->where('customer_id', '=', session('customer_id'))->get();
        return view('client.invoice.index', compact('invoices'));
    }
    function tracking() {
        return view('client.tracking.index');
    }
}
