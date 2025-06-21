<?php

namespace App\Http\Controllers;
use App\Models\Account;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
class AccountController extends Controller
{
    function index() {
        return view('admin.accounts.index');
    }
    function login(Request $request) {
        $email = $request->email;
        $access = $request->access;
        $accounts = DB::table('accounts')
        ->where('email', '=', $email)
        ->where('access', '=', $access)
        ->get();
        if(count($accounts) == 0) {
            $message = "Usted no está autorizado a entrar al sistema.";
            return view("admin.index", compact('message'));
        }
        $account = $accounts[0];
        $roleName = "";
        if($account->role_id == 1) {
            $roleName = "Administrador";
        } else {
            $roleName = "Operador";
        }
        session(['id' => $account->id, 'role_id' => $account->role_id, 'role_name' => $roleName, 'name' => $account->name, 'email' => $account->email]);
        return redirect('/dashboard');
    }
}
