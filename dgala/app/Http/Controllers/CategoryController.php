<?php

namespace App\Http\Controllers;

use App\Models\Category;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\DB;

class CategoryController extends Controller
{
    function index() {//METODO PARA LISTAR LAS CATEGORIAS
        $categories = DB::table('categories AS c')
            ->select(
                'c.id', 'c.category_id', 'cp.name AS category_name', 'c.name', 'c.description', 
                'c.link_image', 'c.ind_level', 'c.ind_status', 'c.created_at', 'c.updated_at'
            )
            ->join('categories AS cp', 'cp.id', '=', 'c.category_id')
            ->get();
        return view('admin.categories.index', compact('categories'));
    }
    function add() {//METODO PARA INVOCAR A LA VISTA DE CREAR CATEGORIA
        $categoriesParent = DB::table('categories')->where('category_id', '=', 1)->get();
        return view('admin.categories.add', compact('categoriesParent'));
    }
    function store(Request $request) {//METODO PARA GENERAR EL REGISTRO DE LA CATEGORIA
        $category = new Category();
        $category->category_id = $request->category_id;
        $category->name = $request->name;
        $category->description = $request->description;
        $category->link_image = "";
        $category->ind_level = 1;
        $category->ind_status = 1;
        if($request->hasFile('image')) { $category->link_image = Storage::put('categories', $request->image); }
        $category->save();
        return redirect('/categories');
    }
    function edit($id) {//METODO PARA INVOCAR A LA VISTA DE EDITAR CATEGORIA
        $categoriesParent = DB::table('categories')->where('category_id', '=', 1)->get();
        $category = Category::find($id);
        return view('admin.categories.edit', compact('category', 'categoriesParent'));
    }
    function update($id, Request $request) {//METODO PARA ACTUALIZAR DATOS AL REGISTRO DE LA CATEGORIA
        $category = Category::find($id);
        $category->category_id = $request->category_id;
        $category->name = $request->name;
        $category->description = $request->description;
        $category->link_image = "";
        $category->ind_level = 1;
        $category->ind_status = 1;
        if($request->hasFile('image')) {
            if($category->link_image) { Storage::delete($category->link_image); }
            $category->link_image = Storage::put('categories', $request->image);
        }
        $category->save();
        return redirect('/categories');
    }
    function destroy($id) {//METODO ELIMINAR UNA CATEGORIA SELECCIONADA
        $category = Category::find($id);
        if($category->link_image) { Storage::delete($category->link_image); }
        $category->delete();
        return redirect('/categories');
    }
}
