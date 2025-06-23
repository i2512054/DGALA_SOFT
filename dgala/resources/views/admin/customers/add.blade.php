@extends('layouts.app-layout-admin')
@section('role', session('role_name'))
@section('title', 'Crear Cliente')
@section('content')
<form action="/customers" method="POST" enctype="multipart/form-data">
    @csrf
    <div class="row">
        <div class="col-lg-12">
            <div class="card">
                <div class="card-body">
                    <a href="/customers" type="button" class="btn btn-danger bg-gradient me-4"><i class="fas fa-undo me-2"></i>Cancelar</a>
                    <button type="submit" class="btn btn-primary bg-gradient"><i class="fas fa-save me-2"></i>Guardar</button>
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
                                    <label class="form-label">Tipo Documento</label>
                                    <select id="document_type_id" name="document_type_id" class="default-select form-control wide">
                                        <option selected="">Seleccione Tipo Dopcumento ...</option>
                                        @foreach ($documentTypes as $item)
                                            <option value="{{ $item->id }}">{{ $item->name }}</option>    
                                        @endforeach
                                    </select>
                                </div>
                                <div class="mb-3 col-md-6">
                                    <label class="form-label">Número de Documento</label>
                                    <input id="document_number" name="document_number" type="text" class="form-control" />
                                </div>
                            </div>
                            <div class="row">
                                <div class="mb-3 col-md-4">
                                    <label class="form-label">nombres</label>
                                    <input id="first_name" name="first_name" type="text" class="form-control" />
                                </div>
                                <div class="mb-3 col-md-4">
                                    <label class="form-label">Apellido Paterno</label>
                                    <input id="middle_name" name="middle_name" type="text" class="form-control" />
                                </div>
                                <div class="mb-3 col-md-4">
                                    <label class="form-label">Apellido Materno</label>
                                    <input id="last_name" name="last_name" type="text" class="form-control" />
                                </div>
                            </div>
                            <div class="row">
                                <div class="mb-3 col-md-8">
                                    <label class="form-label">Correo Electrónico</label>
                                    <input id="email" name="email" type="email" class="form-control" />
                                </div>
                                <div class="mb-3 col-md-4">
                                    <label class="form-label">Nº Celular</label>
                                    <input id="phone_number" name="phone_number" type="number" class="form-control" />
                                </div>
                            </div>
                            <div class="row">
                                <div class="mb-3 col-md-12">
                                    <label class="form-label">Domicilio</label>
                                    <input id="address" name="address" type="text" class="form-control" />
                                </div>
                            </div>
                            <div class="row">
                                <div class="mb-3 col-md-4">
                                    <label class="form-label">Contraseña</label>
                                    <input id="access" name="access" type="password" class="form-control" />
                                </div>
                                <div class="mb-3 col-md-4">
                                    <label class="form-label">Repetir Contraseña</label>
                                    <input id="access_repeat" name="access_repeat" type="password" class="form-control" />
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</form>
@endsection