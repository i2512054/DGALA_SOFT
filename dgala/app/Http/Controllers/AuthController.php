<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class AuthController extends Controller
{
    public function adminSignIn() {
        return view('admin.auth.login');
    }
    public function adminLogin(Request $request) {
        $credentials = $request->only('email', 'password');
        if(Auth::attempt($credentials)) {
            $request->session()->regenerate();
            $users = DB::table('users AS u')
                ->select('u.id', 'u.role_id', 'r.name AS role_name', 'u.name', 'u.email')
                ->join('roles AS r', 'r.id', '=', 'u.role_id')
                ->where('email', '=', $request->email)
                ->get();
            $user = $users[0];
            session([
                'message' => 'Bienvenidos al Sistema',
                'id' => $user->id,
                'role_id' => $user->role_id,
                'role_name' => $user->role_name,
                'name' => $user->name,
                'email' => $user->email
            ]);
            return redirect()->intended('/admin/dashboard');
        }
        session(['message' => 'Usted no está autorizado a entrar a la Plataforma Administrador']);
        return back()->withErrors(['email' => 'Credenciales incorrectas']);
    }
    public function adminLogout(Request $request) {
        Auth::logout();
        $request->session()->invalidate();
        $request->session()->regenerateToken();
        return redirect('/admin/login');
    }
    public function clientSignIn() {
        return view('client.signin.index');
    }
    public function clientLogin(Request $request) {
        $email = $request->email;
        $password = $request->password;
        $customers = DB::table('customers')
            ->where('email', '=', $email)
            ->where('access', '=', $password)
            ->get();
        if(count($customers)) {
            $customer = $customers[0];
            session([
                'message' => 'Bienvenidos a la Plataforma Cliente DGALA',
                'customer_id' => $customer->id,
                'customer_first_name' => $customer->first_name,
                'customer_middle_name' => $customer->middle_name,
                'customer_last_name' => $customer->last_name,
                'customer_email' => $customer->email
            ]);
            return redirect()->intended('/client/dashboard');
        }
        session(['message' => 'Usted no está autorizado a entrar a la Plataforma Cliente DGALA']);
        return back()->withErrors(['email' => 'Credenciales Incorrectas']);
    }
    public function clientLogout() {
        session()->forget('message');
        session()->forget('customer_id');
        session()->forget('customer_first_name');
        session()->forget('customer_middle_name');
        session()->forget('customer_last_name');
        session()->forget('customer_email');
        return redirect('/client/signin');
    }
    public function clientLogoutWeb() {
        session()->forget('message');
        session()->forget('customer_id');
        session()->forget('customer_first_name');
        session()->forget('customer_middle_name');
        session()->forget('customer_last_name');
        session()->forget('customer_email');
        return back()->with(['info' => 'Sesion de cliente finalizada']);
    }
}
