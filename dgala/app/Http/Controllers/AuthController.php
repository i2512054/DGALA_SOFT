<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class AuthController extends Controller
{
    public function adminLogin() {
        return view('auth.login');
    }
    public function login(Request $request) {
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
            return redirect()->intended('/dashboard');
        }
        session(['message' => 'Usted no está autorizado a entrar a la Plataforma Administrador']);
        return back()->withErrors(['email' => 'Credenciales incorrectas']);
    }
    public function logout(Request $request) {
        Auth::logout();
        $request->session()->invalidate();
        $request->session()->regenerateToken();
        return redirect('/login');
    }
}
