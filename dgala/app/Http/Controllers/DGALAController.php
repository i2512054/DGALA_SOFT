<?php

namespace App\Http\Controllers;

use App\Models\Customer;
use App\Models\DocumentType;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use Product;

class DGALAController extends Controller
{
    function index() {
        return view('client.home.index');
    }
    function aboutUs() {
        return view('client.aboutus.index');
    }
    function catalog() {
        return view('client.products.index');
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
        $customer->document_type_id = $request->document_type_id;
        $customer->ubigeo_id = $request->ubigeo_id;
        $customer->document_number = $request->document_number;
        $customer->first_name = $request->first_name;
        $customer->middle_name = $request->middle_name;
        $customer->last_name = $request->last_name;
        $customer->email = $request->email;
        $customer->phone_number = $request->phone_number;
        $customer->address = $request->address;
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
}
