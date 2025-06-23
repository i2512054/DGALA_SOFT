@extends('layouts.app-layout-admin')
@section('role', session('role_name'))
@section('title', 'Editar Categoría')
@section('content')
<form action="/categories/{{ $category->id }}" method="POST" enctype="multipart/form-data">
    @csrf
    @method('PUT')
    <input type="hidden" id="ind_level" name="ind_level" value="{{ $category->ind_level }}" />
    <div class="row">
        <div class="col-lg-12">
            <div class="card">
                <div class="card-body">
                    <a href="/categories" type="button" class="btn btn-danger bg-gradient me-4"><i class="fas fa-undo me-2"></i>Cancelar</a>
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
                        <div class="row">
                            <div class="mb-3 col-md-6">
                                <label class="form-label">Categoría</label>
                                <select id="category_id" name="category_id" onchange="onSetIndNivel();" class="default-select form-control wide">
                                    @foreach($categoriesParent as $item)
                                        @if($category->id === $item->id)
                                            <option ind-level="{{ $item->ind_level }}" value="{{ $item->id }}" selected>{{ $item->name }}</option>
                                        @else
                                            <option ind-level="{{ $item->ind_level }}" value="{{ $item->id }}">{{ $item->name }}</option>
                                        @endif
                                    @endforeach
                                </select>
                            </div>
                            <div class="mb-3 col-md-6">
                                <label class="form-label">Nombre</label>
                                <input id="name" name="name" type="text" class="form-control" value="{{ $category->name }}" />
                            </div>
                        </div>
                        <div class="row">
                            <div class="mb-3 col-md-12">
                                <label class="form-label">Descripción</label>
                                <input id="description" name="description" type="text" class="form-control" value="{{ $category->description }}" />
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-lg-4">
                                <div class="position-relative">
                                    <img id="imgPreview" class="w-100 ratio ratio-16x9 object-fit-cover" src="{{ $category->link_image == '' ? '../../assets/img/icon-photo.png' : Storage::url($category->link_image) }}" />
                                    <div class="position-absolute top-0 end-0">
                                        <label class="p-3 m-2 rounded-2 bg-danger text-black fw-bold">
                                            <i class="fas fa-upload ms-1 me-1"></i>
                                            <input type="file" class="d-none" name="image" accept="image/*" onchange="previewImage(event, '#imgPreview');" />
                                        </label>
                                    </div>
                                </div>
                            </div>
                        </div>
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
    function onSetIndNivel() {
        let indLevel = document.querySelector('#category_id option:checked').getAttribute('ind-level');
        document.querySelector('#ind_level').value = parseInt(indLevel) + 1;
    }
</script>
@endsection