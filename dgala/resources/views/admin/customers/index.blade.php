@extends('layouts.app-layout-admin')
@section('role', session('role_name'))
@section('title', 'Clientes')
@section('content')
<div class="row">
    <div class="col-lg-12">
        <div class="card">
            <div class="card-body">
                <a href="/customers/add" class="btn btn-primary"><i class="fas fa-plus me-2"></i>Agregar Cliente</a>
            </div>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-lg-12">
        <div class="card">
            <div class="card-body">
                <div class="table-responsive">
                    @if (count($customers) == 0)
                        <div class="text-center p-4">
                            <h3 class="text-black">No se han encontrado datos</h3>
                            <p>Por favor, agregue un nuevo Cliente</p>
                        </div>
                    @else
                        <table class="table table-hover table-responsive-sm">
                            <thead class="thead-info">
                                <tr>
                                    <th></th>
                                    <th></th>
                                    <th>Tipo Documento</th>
                                    <th>N° Documento</th>
                                    <th>Cliente</th>
                                    <th>Correo Electrónico</th>
                                    <th>Celular</th>
                                    <th>Domicilio</th>
                                    <th>Activo</th>
                                    <th>F. Creación</th>
                                    <th>F. Actualización</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($customers as $item)
                                    <tr>
                                        <td><a href="/customers/{{ $item->id }}/edit" class="btn btn-dark bg-gradient"><i class="fas fa-pen"></i></a></td>
                                        <td>
                                            <form action="/customers/{{ $item->id }}" method="POST">
                                                @csrf
                                                @method('DELETE')
                                                <button type="submit" class="btn btn-danger bg-gradient"><i class="fas fa-trash"></i></button>
                                            </form>
                                        </td>
                                        <td>{{ $item->document_type_name }}</td>
                                        <td>{{ $item->document_number }}</td>
                                        <td>{{ $item->first_name }} {{ $item->middle_name }} {{ $item->last_name }}</td>
                                        <td>{{ $item->email }}</td>
                                        <td>{{ $item->phone_number }}</td>
                                        <td>{{ $item->address }}</td>
                                        <td>{{ $item->ind_status }}</td>
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