<?php

use App\Http\Controllers\AccountController;
use App\Http\Controllers\AppController;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\ContactController;
use App\Http\Controllers\CustomerController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\DGALAController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\ReportController;
use App\Http\Controllers\SaleController;
use App\Http\Controllers\ToolController;
use App\Http\Controllers\UbigeoController;
use App\Http\Controllers\UserController;
use Illuminate\Support\Facades\Route;

//RUTAS PARA EL SITIO WEB D'GALA
Route::get('/', [DGALAController::class, 'index']);
Route::get('/aboutus', [DGALAController::class, 'aboutUs']);
Route::get('/catalog', [DGALAController::class, 'catalog']);
Route::get('/service', [DGALAController::class, 'service']);
Route::get('/contactus', [DGALAController::class, 'contactUs']);
Route::get('/contactus/confirm', [DGALAController::class, 'contactUsConfirm']);
Route::get('/register', [DGALAController::class, 'register']);
Route::post('/register/create', [DGALAController::class, 'registerConfirm']);
Route::get('/shopping', [DGALAController::class, 'shopping']);

//RUTAS PARA LA AUTENTICACIÓN DE LA PLATAFORMA CLIENTE
Route::get('/client/signin', [AuthController::class, 'clientSignIn']);
Route::post('/client/login', [AuthController::class, 'clientLogin']);
Route::post('/client/logout', [AuthController::class, 'clientLogout']);

//RUTAS PARA LA AUTENTICACIÓN DE LA PLATAFORMA ADMINISTRADOR
Route::get('/admin/login', [AuthController::class, 'adminSignIn'])->name('login');
Route::post('/admin/login', [AuthController::class, 'adminLogin']);
Route::post('/admin/logout', [AuthController::class, 'adminLogout'])->name('logout');

//RUTAS PARA LOS CONSOLIDADO DE DATOS PARA DASHBOARD
Route::get('/admin/dashboard', [DashboardController::class, 'index'])->middleware('auth');
//RUTAS PARA EL CRUD DE CATEGORIAS
Route::get('/admin/categories', [CategoryController::class, 'index']);
Route::get('/admin/categories/add', [CategoryController::class, 'add']);
Route::post('/admin/categories', [CategoryController::class, 'store']);
Route::get('/admin/categories/{id}/edit', [CategoryController::class, 'edit']);
Route::put('/admin/categories/{id}', [CategoryController::class, 'update']);
Route::delete('/categories/{id}', [CategoryController::class, 'destroy']);
//RUTAS PARA EL CRUD DE PRODUCTOS
Route::get('/admin/products', [ProductController::class, 'index']);
Route::get('/admin/products/add', [ProductController::class, 'add']);
Route::post('/admin/products', [ProductController::class, 'store']);
Route::get('/admin/products/{id}/edit', [ProductController::class, 'edit']);
Route::put('/admin/products/{id}', [ProductController::class, 'update']);
Route::delete('/admin/products/{id}', [ProductController::class, 'destroy']);
//RUTAS PARA EL CONTROL DE CLIENTES
Route::get('/admin/customers', [CustomerController::class, 'index']);
Route::get('/admin/customers/add', [CustomerController::class, 'add']);
Route::post('/admin/customers', [CustomerController::class, 'store']);
Route::get('/admin/customers/{id}/edit', [CustomerController::class, 'edit']);
Route::put('/admin/customers/{id}', [CustomerController::class, 'update']);
Route::delete('/admin/customers/{id}', [CustomerController::class, 'destroy']);

//RUTAS PARA EL CONTROL DE VENTAS
Route::get('/admin/sales', [SaleController::class, 'index']);

//RUTAS PARA EL CONTROL DE REPORTES
Route::get('/admin/reports', [ReportController::class, 'index']);

//RUTAS PARA EL CONTROL DE CUENTAS DE USUARIO
Route::get('/admin/users', [UserController::class, 'index']);
Route::get('/admin/users/add', [UserController::class, 'add']);
Route::post('/admin/users', [UserController::class, 'store']);
Route::get('/admin/users/{id}/edit', [UserController::class, 'edit']);
Route::put('/admin/users/{id}', [UserController::class, 'update']);
Route::delete('/admin/users/{id}', [UserController::class, 'destroy']);

//RUTAS PARA EL CONTROL DE CONFIGURACIONES
Route::get('/admin/tools', [ToolController::class, 'index']);

//RUTAS PARA EL CONTROL DE MENSAJES RECIBIDOS POR EL FORMULARIO DE CONTACTENOS
Route::get('/admin/messages', [ContactController::class, 'index']);

//RUTAS PARA EL CONTROL DE APLICACIONES
Route::get('/admin/apps', [AppController::class, 'index']);

//RUTAS PARA EL CONTROL DE UBIGEOS: DEPARTAMENTOS, PROVINCIAS Y DISTRITOS
Route::get('/ubigeos/departments', [UbigeoController::class, 'departments']);
Route::get('/ubigeos/provinces/{department_code}', [UbigeoController::class, 'provinces']);
Route::get('/ubigeos/districts/{department_code}/{province_code}', [UbigeoController::class, 'districts']);

//RUTAS PARA EL CONTROL DE ENVIO DE MENSAJES PARA EL FORMULARIO CONTACTENOS
Route::post('/contacts', [ContactController::class, 'store']);