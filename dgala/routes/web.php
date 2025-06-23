<?php

use App\Http\Controllers\AccountController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\CustomerController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\ReportController;
use App\Http\Controllers\SaleController;
use App\Http\Controllers\ToolController;
use App\Models\App;
use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    $message = "";
    return view('admin.index', compact('message'));
});
//RUTAS PARA LOS CONSOLIDADO DE DATOS PARA DASHBOARD
Route::get('/dashboard', [DashboardController::class, 'index']);
//RUTAS PARA EL CRUD DE CATEGORIAS
Route::get('/categories', [CategoryController::class, 'index']);
Route::get('/categories/add', [CategoryController::class, 'add']);
Route::post('/categories', [CategoryController::class, 'store']);
Route::get('/categories/{id}/edit', [CategoryController::class, 'edit']);
Route::put('/categories/{id}', [CategoryController::class, 'update']);
Route::delete('/categories/{id}', [CategoryController::class, 'destroy']);
//RUTAS PARA EL CRUD DE PRODUCTOS
Route::get('/products', [ProductController::class, 'index']);
Route::get('/products/add', [ProductController::class, 'add']);
Route::post('/products', [ProductController::class, 'store']);
Route::get('/products/{id}/edit', [ProductController::class, 'edit']);
Route::put('/products/{id}', [ProductController::class, 'update']);
Route::delete('/products/{id}', [ProductController::class, 'destroy']);
//RUTAS PARA EL CONTROL DE CLIENTES
Route::get('/customers', [CustomerController::class, 'index']);
Route::get('/customers/add', [CustomerController::class, 'add']);
Route::post('/customers', [CustomerController::class, 'store']);
Route::get('/customers/{id}/edit', [CustomerController::class, 'edit']);
Route::put('/customers/{id}', [CustomerController::class, 'update']);
Route::delete('/customers/{id}', [CustomerController::class, 'destroy']);

//RUTAS PARA EL CONTROL DE VENTAS
Route::get('/sales', [SaleController::class, 'index']);

//RUTAS PARA EL CONTROL DE REPORTES
Route::get('/reports', [ReportController::class, 'index']);

//RUTAS PARA EL CONTROL DE CUENTAS DE USUARIO
Route::get('/accounts', [AccountController::class, 'index']);
Route::post('/account/login', [AccountController::class, 'login']);

//RUTAS PARA EL CONTROL DE CONFIGURACIONES
Route::get('/tools', [ToolController::class, 'index']);

Route::get('/apps', function() {
    $apps = App::all();
    return $apps;
});