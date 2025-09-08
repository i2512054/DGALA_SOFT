<?php

namespace App\Http\Controllers;

use App\Models\Role;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;

class UserController extends Controller
{
    function index() {//METODO PARA LISTAR LOS USUARIOS
        $users = DB::table('users AS u')
            ->select('u.id', 'u.role_id', 'r.name AS role_name', 'u.name', 'u.email', 'u.ind_status', 'u.created_at', 'u.updated_at')
            ->join('roles AS r', 'r.id', '=', 'u.role_id')
            ->paginate(4);
        return view('admin.users.index', compact('users'));
    }
    function add() {//METODO PARA INVOCAR A LA VISTA DE CREAR USUARIO
        $roles = Role::all();
        return view('admin.users.add', compact('roles'));
    }
    function store(Request $request) {//METODO PARA GENERAR EL REGISTRO DEL USUARIO
        $user = new User();
        $user->role_id = $request->role_id;
        $user->name = $request->name;
        $user->email = $request->email;
        $user->password = Hash::make($request->password);
        $user->ind_status = 1;
        $user->save();
        return redirect('admin/users');
    }
    function edit($id) {//METODO PARA INVOCAR A LA VISTA DE EDITAR USUARIO
        $roles = Role::all();
        $user = User::find($id);
        return view('admin.users.edit', compact('user', 'roles'));
    }
    function update($id, Request $request) {//METODO PARA ACTUALIZAR DATOS AL REGISTRO DEL USUARIO
        $user = User::find($id);
        $user->role_id = $request->role_id;
        $user->name = $request->name;
        $user->email = $request->email;
        $user->password = Hash::make($request->password);
        $user->ind_status = 1;
        $user->save();
        return redirect('admin/users');
    }
    function destroy($id) {//METODO PARA ELIMINAR UN CLIENTE SELECCIONADO
        $user = User::find($id);
        $user->ind_status = 0;
        $user->save();
        return redirect('admin/users');
    }
}