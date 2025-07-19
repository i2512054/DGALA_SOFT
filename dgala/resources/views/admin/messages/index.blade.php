@extends('layouts.admin.app-layout-admin')
@section('role', session('role_name'))
@section('title', 'Mensajes recibidos de Contáctenos')
@section('content')
<!--<div class="row">
    <div class="col-lg-12">
        <div class="card">
            <div class="card-body">
                <a href="/admin/users/add" class="btn btn-primary"><i class="fas fa-plus me-2"></i>Agregar Usuario</a>
            </div>
        </div>
    </div>
</div>-->
<div class="row">
    <div class="col-lg-12">
        <div class="card">
            <div class="card-body">
                <div class="table-responsive">
                    @if (count($contacts) == 0)
                        <div class="text-center p-4">
                            <h3 class="text-black">No se han encontrado datos</h3>
                            <p>Por favor, espere a que los clientes envíen sus mensajes</p>
                        </div>
                    @else
                        <table class="table table-hover table-responsive-sm">
                            <thead class="thead-info">
                                <tr>
                                    <th></th>
                                    <th>Nombre</th>
                                    <th>Apellido</th>
                                    <th>Correo Electrónico</th>
                                    <th>Teléfono</th>
                                    <th>Mensaje</th>
                                    <th>F. Creación</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($contacts as $item)
                                    <tr>
                                        <td><a href="#" class="btn btn-success bg-gradient"><i class="fab fa-whatsapp"></i></a></td>
                                        <td>{{ $item->name }}</td>
                                        <td>{{ $item->last_name }}</td>
                                        <td>{{ $item->email }}</td>
                                        <td>{{ $item->phone_number }}</td>
                                        <td>{{ $item->message }}</td>
                                        <td>{{ $item->created_at }}</td>
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