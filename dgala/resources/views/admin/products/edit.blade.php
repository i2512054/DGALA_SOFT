@extends('layouts.app-layout-admin')
@section('role', session('role_name'))
@section('title', 'Editar Producto')
@section('content')
<form action="/products/{{ $product->id }}" method="POST" enctype="multipart/form-data">
    @csrf
    @method('PUT')
    <div class="row">
        <div class="col-lg-12">
            <div class="card">
                <div class="card-body">
                    <a href="/products" type="button" class="btn btn-danger bg-gradient me-4"><i class="fas fa-undo me-2"></i>Cancelar</a>
                    <button type="submit" class="btn btn-primary bg-gradient"><i class="fas fa-save me-2"></i>Actualizar</button>
                </div>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-lg-12">
            <div class="card">
                <div class="card-body">
                    <div class="basic-form">
                        <form action="">
                            <div class="row">
                                <div class="mb-3 col-md-6">
                                    <label class="form-label">Categoría</label>
                                    <select id="category_id" name="category_id" class="default-select form-control wide">
                                    @foreach($categories as $item)
                                        @if($product->category_id === $item->id)
                                            <option value="{{ $item->id }}" selected>{{ $item->name }}</option>
                                        @else
                                            <option value="{{ $item->id }}">{{ $item->name }}</option>
                                        @endif
                                    @endforeach
                                    </select>
                                </div>
                                <div class="mb-3 col-md-6">
                                    <label class="form-label">Nombre</label>
                                    <input id="name" name="name" type="text" class="form-control" value="{{ $product->name }}" />
                                </div>
                            </div>
                            <div class="row">
                                <div class="mb-3 col-md-12">
                                    <label class="form-label">Descripción</label>
                                    <input id="description" name="description" type="text" class="form-control" value="{{ $product->description }}" />
                                </div>
                            </div>
                            <div class="row">
                                <div class="mb-3 col-md-6">
                                    <label class="form-label">Color</label>
                                    <input id="color" name="color" type="text" class="form-control" value="{{ $product->color }}" />
                                </div>
                                <div class="mb-3 col-md-6">
                                    <label class="form-label">Dimensión</label>
                                    <input id="dimension" name="dimension" type="text" class="form-control" value="{{ $product->dimension }}" />
                                </div>
                            </div>
                            <div class="row">
                                <div class="mb-3 col-md-4">
                                    <label class="form-label">Peso</label>
                                    <input id="weight" name="weight" type="number" class="form-control" value="{{ $product->weight }}" />
                                </div>
                                <div class="mb-3 col-md-4">
                                    <label class="form-label">Precio Costo</label>
                                    <input id="cost_price" name="cost_price" type="number" class="form-control" value="{{ $product->cost_price }}" />
                                </div>
                                <div class="mb-3 col-md-4">
                                    <label class="form-label">Precio Venta</label>
                                    <input id="sales_price" name="sales_price" type="number" class="form-control" value="{{ $product->sales_price }}" />
                                </div>
                            </div>
                            <div class="row">
                                <div class="mb-3 col-md-4">
                                    <label class="form-label">Cantidad</label>
                                    <input id="quantity" name="quantity" type="number" class="form-control" value="{{ $product->quantity }}" />
                                </div>
                                <div class="mb-3 col-md-4">
                                    <label class="form-label">Stock Mínimo</label>
                                    <input id="min_stock" name="min_stock" type="number" class="form-control" value="{{ $product->min_stock }}" />
                                </div>
                                <div class="mb-3 col-md-4">
                                    <label class="form-label">Stock Máximo</label>
                                    <input id="max_stock" name="max_stock" type="number" class="form-control" value="{{ $product->max_stock }}" />
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-lg-4">
                                    <div class="position-relative">
                                        <img id="imgPreview" class="w-100 ratio ratio-16x9 object-fit-cover" src="{{ $product->link_image == '' ? '../../assets/img/icon-photo.png' : Storage::url($product->link_image) }}" />
                                        <div class="position-absolute top-0 end-0">
                                            <label class="p-3 m-2 rounded-2 bg-danger text-black fw-bold">
                                                <i class="fas fa-upload ms-1 me-1"></i>
                                                <input type="file" class="d-none" name="image" accept="image/*" onchange="previewImage(event, '#imgPreview');" />
                                            </label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</form>
<script>
    function previewImage(event, querySelector) {
        let input = event.target;
        let imgPreview = document.querySelector(querySelector);
        if(!input.files.length) { return; }
        let file = input.files[0];
        let objectURL = URL.createObjectURL(file);
        imgPreview.src = objectURL;
    }
</script>
@endsection