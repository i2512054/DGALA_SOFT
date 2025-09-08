@extends('layouts.admin.app-layout-admin')
@section('role', session('role_name'))
@section('title', 'Productos')
@section('content')
<div class="row">
    <div class="col-lg-12">
        <div class="card">
            <div class="card-body">
                <a href="/admin/products/add" class="btn btn-primary"><i class="fas fa-plus me-2"></i>Agregar Producto</a>
            </div>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-lg-12">
        <div class="card">
            <div class="card-body">
                <div class="table-responsive">
                    @if (count($products) == 0)
                        <div class="text-center p-4">
                            <h3 class="text-black">No se han encontrado datos</h3>
                            <p>Por favor, agregue un nuevo Producto</p>
                        </div>
                    @else
                        <table class="table table-hover table-responsive-sm">
                            <thead class="thead-info">
                                <tr>
                                    <th></th>
                                    <th></th>
                                    <th width="100">
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    </th>
                                    <th>Categoría</th>
                                    <th>Nombre</th>
                                    <th>Descripción</th>
                                    <th>Color</th>
                                    <th>Dimensión</th>
                                    <th>Peso</th>
                                    <th>Precio Costo</th>
                                    <th>Precio Venta</th>
                                    <th>Cantidad</th>
                                    <th>Stock Mínimo</th>
                                    <th>Stock Máximo</th>
                                    <th>Activo</th>
                                    <th>F. Creación</th>
                                    <th>F. Actualización</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($products as $item)
                                    <tr>
                                        <td><a href="/admin/products/{{ $item->id }}/edit" class="btn btn-dark bg-gradient"><i class="fas fa-pen"></i></a></td>
                                        <td>
                                            <form action="/admin/products/{{ $item->id }}" method="POST">
                                                @csrf
                                                @method('DELETE')
                                                <button type="submit" class="btn btn-danger bg-gradient"><i class="fas fa-trash"></i></button>
                                            </form>
                                        </td>
                                        <td>
                                            <img class="w-100 ratio ratio-16x9 object-fit-cover" src="{{ $item->link_image == '' ? '../../assets/img/icon-photo.png' : Storage::url($item->link_image) }}" />
                                        </td>
                                        <td>{{ $item->category_name }}</td>
                                        <td>{{ $item->name }}</td>
                                        <td>{{ $item->description }}</td>
                                        <td>{{ $item->color }}</td>
                                        <td>{{ $item->dimension }}</td>
                                        <td>{{ $item->weight }}</td>
                                        <td>{{ $item->cost_price }}</td>
                                        <td>{{ $item->sales_price }}</td>
                                        <td>{{ $item->quantity }}</td>
                                        <td>{{ $item->min_stock }}</td>
                                        <td>{{ $item->max_stock }}</td>
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
                <div class="d-flex custom-pagination justify-content-center">
                    {{ $products->appends(request()->query())->links('vendor.pagination.bootstrap-5') }}
                </div>
            </div>
        </div>
    </div>
</div>
@endsection