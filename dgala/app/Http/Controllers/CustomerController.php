<?php

namespace App\Http\Controllers;

use App\Models\Customer;
use App\Models\DocumentType;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class CustomerController extends Controller
{
    function index() {//METODO PARA LISTAR LOS CLIENTES
        $customers = DB::table('customers AS c')
            ->select(
                'c.id', 'c.document_type_id', 'dt.name AS document_type_name', 'c.document_number',
                'c.first_name', 'c.middle_name', 'c.last_name', 'c.email', 'c.phone_number', 'c.address',
                'c.access', 'c.ind_status', 'c.created_at', 'c.updated_at'
            )
            ->join('document_types AS dt', 'dt.id', '=', 'c.document_type_id')
            ->get();
        return view('admin.customers.index', compact('customers'));
    }
    function add() {//METODO PARA INVOCAR A LA VISTA DE CREAR CLIENTE
        $documentTypes = DocumentType::all();
        return view('admin.customers.add', compact('documentTypes'));
    }
    function store(Request $request) {//METODO PARA GENERAR EL REGISTRO DEL CLIENTE
        $customer = new Customer();
        $customer->document_type_id = $request->document_type_id;
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
        return redirect('/customers');
    }
    function edit($id) {//METODO PARA INVOCAR A LA VISTA DE EDITAR CLIENTE
        $documentTypes = DocumentType::all();
        $customer = Customer::find($id);
        return view('admin.customers.edit', compact('customer', 'documentTypes'));
    }
    function update($id, Request $request) {//METODO PARA ACTUALIZAR DATOS AL REGISTRO DEL CLIENTE
        $customer = Customer::find($id);
        $customer->document_type_id = $request->document_type_id;
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
        return redirect('/customers');
    }
    function destroy($id) {//METODO PARA ELIMINAR UN CLIENTE SELECCIONADO
        $customer = Customer::find($id);
        $customer->delete();
        return redirect('/customers');
    }
}