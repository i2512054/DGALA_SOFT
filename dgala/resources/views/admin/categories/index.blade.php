@extends('layouts.app-layout-admin')
@section('role', session('role_name'))
@section('title', 'Categorías')
@section('content')
<div class="row">
    <div class="col-lg-12">
        <div class="card">
            <div class="card-body">
                <a href="/categories/add" class="btn btn-primary"><i class="fas fa-plus me-2"></i>Agregar Categoría</a>
            </div>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-lg-12">
        <div class="card">
            <div class="card-body">
                <div class="table-responsive">
                    @if (count($categories) == 0)
                        <div class="text-center p-4">
                            <h3 class="text-black">No se han encontrado datos</h3>
                            <p>Por favor, agregue una nueva categoría</p>
                        </div>
                    @else
                        <table class="table table-hover table-responsive-sm">
                            <thead class="thead-info">
                                <tr>
                                    <th></th>
                                    <th></th>
                                    <th>Categoría</th>
                                    <th>Nombre</th>
                                    <th>Descripción</th>
                                    <th>Activo</th>
                                    <th>F. Creación</th>
                                    <th>F. Actualización</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($categories as $item)
                                    <tr>
                                        <td><a href="/categories/{{ $item->id }}/edit" class="btn btn-dark bg-gradient"><i class="fas fa-pen"></i></a></td>
                                        <td>
                                            <form action="/categories/{{ $item->id }}" method="POST">
                                                @csrf
                                                @method('DELETE')
                                                <button type="submit" class="btn btn-danger bg-gradient"><i class="fas fa-trash"></i></button>
                                            </form>
                                        </td>
                                        <td>{{ $item->category_name }}</td>
                                        <td>{{ $item->name }}</td>
                                        <td>{{ $item->description }}</td>
                                        @if($item->ind_status === 1)
                                            <td><span class="btn bgl-success text-success fs-18 font-w600">Si</span></td>
                                        @else
                                            <td><span class="btn bgl-danger text-danger fs-18 font-w600">No</span></td>
                                        @endif
                                        <td>{{ $item->created_at }}</td>
                                        <td>{{ $item->updated_at }}</td>
                                    </tr>
                                @endforeach
                            </tbody>
                        </table>
                    @endif
                </div>
            </div>
        </div>
    </div>
</div>
@endsection