<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Invoice;
use Illuminate\Support\Facades\DB;

class SaleController extends Controller
{
    function index() {
        $invoices = DB::table('invoices AS I')
            ->select(
                'I.id', 'I.customer_id', 'DT.initials AS document_type_initials', 'DT.name AS document_type_name', 
                'C.document_number AS customer_document_number', 'C.first_name AS customer_first_name', 'C.middle_name AS customer_middle_name', 
                'C.last_name AS customer_last_name', 'C.phone_number AS customer_phone_number', 'I.type', 'I.issued_at', 'I.expired_at', 'I.tax', 
                'I.ind_action', 'I.ind_status', 'I.created_at', 'I.updated_at'
            )
            ->join('customers AS C', 'C.id', '=', 'I.customer_id')
            ->join('document_types AS DT', 'DT.id', '=', 'C.document_type_id')
            ->paginate(6);
        return view('admin.sales.index', compact('invoices'));
    }
}
