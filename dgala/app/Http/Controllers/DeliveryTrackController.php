<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class DeliveryTrackController extends Controller
{
    function search($id) {
        $company = DB::table('companies')->get()[0];
        $ubigeoStarted = DB::table('ubigeos AS U')
            ->select(
                'D.description AS department', 
                'P.description AS province', 
                'U.description AS district'
            )
            ->join('ubigeos AS D', function($join){
                $join
                    ->on('D.department_code', '=', 'U.department_code')
                    ->on('D.province_code', '=', DB::raw("'00'"))
                    ->on('D.district_code', '=', DB::raw("'00'"));
            })
            ->join('ubigeos AS P', function($join){
                $join
                    ->on('P.department_code', '=', 'U.department_code')
                    ->on('P.province_code', '=', 'U.province_code')
                    ->on('P.district_code', '=', DB::raw("'00'"));
            })
            ->where('U.id', '=', $company->ubigeo_id)
            ->get()[0];
        $deliveryTrack = DB::table('delivery_tracks')->where('id', '=', $id)->get()[0];
        $delivery = DB::table('deliveries')->where('id', '=', $deliveryTrack->delivery_id)->get()[0];
        $deliveryMovements = DB::table('delivery_movements')->where('delivery_id', '=', $delivery->id)->get();
        $invoice = DB::table('invoices')->where('id', '=', $delivery->invoice_id)->get()[0];
        $customer = DB::table('customers')->where('id', '=', $invoice->customer_id)->get()[0];
        $ubigeoEnded = DB::table('ubigeos AS U')
            ->select(
                'D.description AS department', 
                'P.description AS province', 
                'U.description AS district'
            )
            ->join('ubigeos AS D', function($join){
                $join
                    ->on('D.department_code', '=', 'U.department_code')
                    ->on('D.province_code', '=', DB::raw("'00'"))
                    ->on('D.district_code', '=', DB::raw("'00'"));
            })
            ->join('ubigeos AS P', function($join){
                $join
                    ->on('P.department_code', '=', 'U.department_code')
                    ->on('P.province_code', '=', 'U.province_code')
                    ->on('P.district_code', '=', DB::raw("'00'"));
            })
            ->where('U.id', '=', $customer->ubigeo_id)
            ->get()[0];
        $response = [
            'company'           => $company,
            'ubigeoStarted'     => $ubigeoStarted,
            'deliveryTrack'     => $deliveryTrack,
            'delivery'          => $delivery,
            'deliveryMovements' => $deliveryMovements,
            'invoice'           => $invoice,
            'customer'          => $customer,
            'ubigeoEnded'       => $ubigeoEnded
        ];
        return $response;
    }
}
