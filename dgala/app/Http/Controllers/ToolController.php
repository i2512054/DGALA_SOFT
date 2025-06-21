<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class ToolController extends Controller
{
    function index() {
        return view('admin.tools.index');
    }
}
