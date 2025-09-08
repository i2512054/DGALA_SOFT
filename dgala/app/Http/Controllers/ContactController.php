<?php

namespace App\Http\Controllers;

use App\Models\Contact;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class ContactController extends Controller
{
    function index() {
        $contacts = DB::table('contacts')->paginate(6);
        return view('admin.messages.index', compact('contacts'));
    }
    function store(Request $request) {
        $contact = new Contact();
        $contact->name = $request->name;
        $contact->last_name = $request->last_name;
        $contact->email = $request->email;
        $contact->phone_number = $request->phone_number;
        $contact->message = $request->message;
        $contact->save();
        return redirect('/contactus/confirm');
    }
}
