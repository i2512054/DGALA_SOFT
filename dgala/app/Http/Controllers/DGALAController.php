<?php

namespace App\Http\Controllers;

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
    function register() {
        return view('client.register.index');
    }
    function signIn() {
        return view('client.signin.index');
    }
    function shopping() {
        return view('client.shopping.index');
    }
}
