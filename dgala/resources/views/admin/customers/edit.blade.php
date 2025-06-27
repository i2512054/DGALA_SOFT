@extends('layouts.app-layout-admin')
@section('role', session('role_name'))
@section('title', 'Editar Cliente')
@section('content')
<form action="/customers/{{ $customer->id }}" method="POST" enctype="multipart/form-data">
    @csrf
    @method('PUT')
    <input type="hidden" name="ubigeo_id" id="ubigeo_id" value="{{ $customer->ubigeo_id }}" />
    <div class="row">
        <div class="col-lg-12">
            <div class="card">
                <div class="card-body">
                    <a href="/customers" type="button" class="btn btn-danger bg-gradient me-4"><i class="fas fa-undo me-2"></i>Cancelar</a>
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
                                    <label class="form-label">Tipo Documento</label>
                                    <select id="document_type_id" name="document_type_id" class="default-select form-control wide">
                                        <option selected="">Seleccione Tipo Dopcumento ...</option>
                                        @foreach ($documentTypes as $item)
                                            @if($customer->document_type_id === $item->id)
                                                <option value="{{ $item->id }}" selected>{{ $item->name }}</option>
                                            @else
                                                <option value="{{ $item->id }}">{{ $item->name }}</option>
                                            @endif
                                        @endforeach
                                    </select>
                                </div>
                                <div class="mb-3 col-md-6">
                                    <label class="form-label">Número de Documento</label>
                                    <input id="document_number" name="document_number" type="text" class="form-control" value="{{ $customer->document_number }}" />
                                </div>
                            </div>
                            <div class="row">
                                <div class="mb-3 col-md-4">
                                    <label class="form-label">nombres</label>
                                    <input id="first_name" name="first_name" type="text" class="form-control" value="{{ $customer->first_name }}" />
                                </div>
                                <div class="mb-3 col-md-4">
                                    <label class="form-label">Apellido Paterno</label>
                                    <input id="middle_name" name="middle_name" type="text" class="form-control" value="{{ $customer->middle_name }}" />
                                </div>
                                <div class="mb-3 col-md-4">
                                    <label class="form-label">Apellido Materno</label>
                                    <input id="last_name" name="last_name" type="text" class="form-control" value="{{ $customer->last_name }}" />
                                </div>
                            </div>
                            <div class="row">
                                <div class="mb-3 col-md-8">
                                    <label class="form-label">Correo Electrónico</label>
                                    <input id="email" name="email" type="email" class="form-control" value="{{ $customer->email }}" />
                                </div>
                                <div class="mb-3 col-md-4">
                                    <label class="form-label">Nº Celular</label>
                                    <input id="phone_number" name="phone_number" type="number" class="form-control" value="{{ $customer->phone_number }}" />
                                </div>
                            </div>
                            <div class="row">
                                <div class="mb-3 col-md-4">
                                    <label class="form-label">Departamento</label>
                                    <select id="department_code" name="department_code" onchange="loadProvince();">
                                        <option>Seleccione Departamento ...</option>
                                        @foreach ($departments as $item)
                                            @if($item->department_code === $ubigeo->department_code)
                                                <option value="{{ $item->department_code }}" selected>{{ $item->description }}</option>
                                            @else
                                                <option value="{{ $item->department_code }}">{{ $item->description }}</option>
                                            @endif
                                        @endforeach
                                    </select>
                                </div>
                                <div class="mb-3 col-md-4">
                                    <label class="form-label">Provincia</label>
                                    <select id="province_code" name="province_code" onchange="loadDistrict();">
                                        <option>Seleccione Provincia ...</option>
                                        @foreach ($provinces as $item)
                                            @if($item->province_code === $ubigeo->province_code)
                                                <option value="{{ $item->province_code }}" selected>{{ $item->description }}</option>
                                            @else
                                                <option value="{{ $item->province_code }}">{{ $item->description }}</option>
                                            @endif
                                        @endforeach
                                    </select>
                                </div>
                                <div class="mb-3 col-md-4">
                                    <label class="form-label">Distrito</label>
                                    <select id="district_code" name="district_code" onchange="onSelUbigeo();">
                                        <option>Seleccione Distrito ...</option>
                                        @foreach ($districts as $item)
                                            @if($item->district_code === $ubigeo->district_code)
                                                <option value="{{ $item->id }}" selected>{{ $item->description }}</option>
                                            @else
                                                <option value="{{ $item->id }}">{{ $item->description }}</option>
                                            @endif
                                        @endforeach
                                    </select>
                                </div>
                            </div>
                            <div class="row mt-3">
                                <div class="mb-3 col-md-12">
                                    <label class="form-label">Domicilio</label>
                                    <input id="address" name="address" type="text" class="form-control" value="{{ $customer->address }}" />
                                </div>
                            </div>
                            <div class="row">
                                <div class="mb-3 col-md-4">
                                    <label class="form-label">Contraseña</label>
                                    <input id="access" name="access" type="password" class="form-control" value="{{ $customer->access }}" />
                                </div>
                                <div class="mb-3 col-md-4">
                                    <label class="form-label">Repetir Contraseña</label>
                                    <input id="access_repeat" name="access_repeat" type="password" class="form-control" value="{{ $customer->access }}" />
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
    async function loadProvince() {
        let departmentCode = $('#department_code').val();
        const response = await fetch('/ubigeos/provinces/' + departmentCode, {
            method: "GET"
        });
        let json = await response.json();
        $('#province_code, #district_code').html("");
        $('#province_code').append("<option selected>Seleccione Provincia ...</option>");
        for(const item of json) {
            let sHTML = "<option value='" + item.province_code + "'>" + item.description + "</option>";
            $('#province_code').append(sHTML);
        }
    }
    async function loadDistrict() {
        let departmentCode = $('#department_code').val();
        let provinceCode = $('#province_code').val();
        const response = await fetch('/ubigeos/districts/' + departmentCode + '/' + provinceCode, {
            method: "GET"
        });
        let json = await response.json();
        $('#district_code').html("");
        $('#district_code').append("<option selected>Seleccione Distrito ...</option>");
        for(const item of json) {
            let sHTML = "<option value='" + item.id + "'>" + item.description + "</option>";
            $('#district_code').append(sHTML);
        }
    }
    function onSelUbigeo() {
        let ubigeoId = $('#district_code').val();
        $('#ubigeo_id').val(ubigeoId);
    }
</script>
@endsection