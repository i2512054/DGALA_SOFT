<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class UbigeoController extends Controller
{
    function departments() {
        $ubigeos = DB::table('ubigeos')
            ->where('province_code', '=', '00')
            ->where('district_code', '=', '00')
            ->get();
        return $ubigeos;
    }
    function provinces($department_code) {
        $ubigeos = DB::table('ubigeos')
            ->where('department_code', '=', $department_code)
            ->where('province_code', '<>', '00')
            ->where('district_code', '=', '00')
            ->get();
        return $ubigeos;
    }
    function districts($department_code, $province_code) {
        $ubigeos = DB::table('ubigeos')
            ->where('department_code', '=', $department_code)
            ->where('province_code', '=', $province_code)
            ->where('district_code', '<>', '00')
            ->get();
        return $ubigeos;
    }
}
