<?php

namespace App\Http\Controllers;

use App\Models\App;
use Illuminate\Http\Request;

class AppController extends Controller
{
    function index() {
        $apps = App::all();
        return $apps;
    }
}
