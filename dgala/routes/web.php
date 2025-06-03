<?php

use App\Models\App;
use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('welcome');
});

/*Route::get('/apps', [CategoryController::class, 'index'])->name('apps.index');
Route::get('/apps/add', [CategoryController::class, 'add'])->name('apps.add');
Route::get('/apps/{id}', [CategoryController::class, 'show'])->name('apps.show');
Route::get('/apps/{id}/edit', [CategoryController::class, 'edit'])->name('apps.edit');
Route::post('/apps', [CategoryController::class, 'store'])->name('apps.store');
Route::put('/apps/{id}', [CategoryController::class, 'update'])->name('apps.update');
Route::delete('/apps/{id}', [CategoryController::class, 'destroy'])->name('apps.destroy');*/

Route::get('/apps', function() {
    $apps = App::all();
    return $apps;
});