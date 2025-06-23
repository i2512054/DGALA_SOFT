<?php

namespace App\Http\Controllers;

use App\Models\Product;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\DB;

class ProductController extends Controller
{
    function index() {//METODO PARA LISTAR LOS PRODUCTOS
        $products = DB::table('products AS p')
            ->select(
                'p.id', 'p.category_id', 'c.name AS category_name', 'p.name', 'p.description', 'p.color', 'p.dimension', 
	            'p.weight', 'p.cost_price', 'p.sales_price', 'p.quantity', 'p.min_stock', 'p.max_stock', 'p.ind_status', 
	            'p.link_image', 'p.created_at', 'p.updated_at'
            )
            ->join('categories AS c', 'c.id', '=', 'p.category_id')
            ->get();
        return view('admin.products.index', compact('products'));
    }
    function add() {//METODO PARA INVOCAR A LA VISTA DE CREAR PRODUCTO
        $categories = DB::table('categories')
            ->where('category_id', '>', 0)
            ->get();
        return view('admin.products.add', compact('categories'));
    }
    function store(Request $request) {//METODO PARA GENERAR EL REGISTRO DEL PRODUCTO
        $product = new Product();
        $product->category_id = $request->category_id;
        $product->name = $request->name;
        $product->description = $request->description;
        $product->color = $request->color;
        $product->dimension = $request->dimension;
        $product->weight = $request->weight;
        $product->cost_price = $request->cost_price;
        $product->sales_price = $request->sales_price;
        $product->quantity = $request->quantity;
        $product->min_stock = $request->min_stock;
        $product->max_stock = $request->max_stock;
        $product->link_image = "";
        $product->ind_status = 1;
        if($request->hasFile('image')) { $product->link_image = Storage::put('products', $request->image); }
        $product->save();
        return redirect('/products');
    }
    function edit($id) {//METODO PARA INVOCAR A LA VISTA DE EDITAR PRODUCTO
        $categories = DB::table('categories')
            ->where('category_id', '>', 0)
            ->get();
        $product = Product::find($id);
        return view('admin.products.edit', compact('product', 'categories'));
    }
    function update($id, Request $request) {//METODO PARA ACTUALIZAR DATOS AL REGISTRO DEL PRODUCTO
        $product = Product::find($id);
        $product->category_id = $request->category_id;
        $product->name = $request->name;
        $product->description = $request->description;
        $product->color = $request->color;
        $product->dimension = $request->dimension;
        $product->weight = $request->weight;
        $product->cost_price = $request->cost_price;
        $product->sales_price = $request->sales_price;
        $product->quantity = $request->quantity;
        $product->min_stock = $request->min_stock;
        $product->max_stock = $request->max_stock;
        $product->link_image = $request->link_image;
        $product->ind_status = 1;
        if($request->hasFile('image')) {
            if($product->link_image) { Storage::delete($product->link_image); }
            $product->link_image = Storage::put('products', $request->image);
        }
        $product->save();
        return redirect('/products');
    }
    function destroy($id) {//METODO PARA ELIMINAR UN PRODUCTO SELECCIONADO
        $product = Product::find($id);
        if($product->link_image) { Storage::delete($product->link_image); }
        $product->delete();
        return redirect('/products');
    }
}