@extends('layouts.client.app-layout-client')
@section('content')
    <style>
        .parallax {
            background-image: linear-gradient(rgba(65, 35, 1, 0.2),rgba(8, 2, 0, 0.3)), url("../../assets/img/parallax_dashboard.jpg");
            min-height: 500px;
            background-attachment: fixed;
            background-position: center;
            background-repeat: no-repeat;
            background-size: cover;
        }
        .zoom { transition: transform .5s; }
        .zoom:hover { transform: scale(1.5); }
    </style>
    <section class="parallax">
        <article>
            <div class="row">
                <div class="col">
                    <h1 class="display-3 text-center mt-5 fw-bold">Mi Cuenta</h1>
                </div>
            </div>
            <!--<div class="row"><div class="col"><hr class="text-dark" /></div></div>-->
            <form action="/client/account/update/{{ $customer->id }}" method="POST" class="needs-validation" novalidate>
                @csrf
                @method('PUT')
                <input type="hidden" name="ubigeo_id" id="ubigeo_id" value="{{ $customer->ubigeo_id }}" />
                <div class="row g-6 p-4">
                    <div class="col-12 col-md-12"><hr class="text-dark" /></div>
                    <div class="col-12 col-md-12"><h1 class="display-5 text-center fw-bold">Datos Generales</h1></div>
                    <div class="col-12 col-md-12"><hr class="text-dark" /></div>
                    <div class="col-12 col-md-6">
                        <div class="mb-3">
                            <label class="form-label">Tipo Documento</label>
                            <select class="form-select" id="document_type_id" name="document_type_id" required>
                                <option value="" selected>Seleccione Tipo de Documento</option>
                                @foreach ($documentTypes as $item)
                                    @if ($item->id === $customer->document_type_id)
                                        <option value="{{ $item->id }}" selected>{{ $item->name }}</option>
                                    @else
                                        <option value="{{ $item->id }}">{{ $item->name }}</option>
                                    @endif
                                @endforeach
                            </select>
                            <div class="invalid-feedback fw-bold">Por favor seleccione el tipo de documento.</div>
                        </div>
                    </div>
                    <div class="col-12 col-md-6">
                        <div class="mb-3">
                            <label class="form-label">Número de Documento</label>
                            <input type="text" class="form-control" id="document_number" name="document_number" value="{{ $customer->document_number }}" oninput="limitNumberLength(this, 25);" required />
                            <div class="invalid-feedback fw-bold">Por favor especifique el número de documento.</div>
                        </div>
                    </div>
                    <div class="col-12 col-md-4">
                        <div class="mb-3">
                            <label class="form-label">Nombres</label>
                            <input type="text" class="form-control" id="first_name" name="first_name" value="{{ $customer->first_name }}" maxlength="80" required />
                            <div class="invalid-feedback fw-bold">Por favor especifique sus nombres.</div>
                        </div>
                    </div>
                    <div class="col-12 col-md-4">
                        <div class="mb-3">
                            <label class="form-label">Apellido Paterno</label>
                            <input type="text" class="form-control" id="middle_name" name="middle_name" value="{{ $customer->middle_name }}" maxlength="80" required />
                            <div class="invalid-feedback fw-bold">Por favor especifique su apellido paterno.</div>
                        </div>
                    </div>
                    <div class="col-12 col-md-4">
                        <div class="mb-3">
                            <label class="form-label">Apellido Materno</label>
                            <input type="text" class="form-control" id="last_name" name="last_name" value="{{ $customer->last_name }}" maxlength="80" required />
                            <div class="invalid-feedback fw-bold">Por favor especifique su apellido materno.</div>
                        </div>
                    </div>
                    <div class="col-12 col-md-8">
                        <div class="mb-3">
                            <label class="form-label">Correo Electrónico</label>
                            <input type="email" class="form-control" id="email" name="email" value="{{ $customer->email }}" maxlength="255" required />
                            <div class="invalid-feedback fw-bold">Por favor especifique su correo electrónico.</div>
                        </div>
                    </div>
                    <div class="col-12 col-md-4">
                        <div class="mb-3">
                            <label class="form-label">Número de Teléfono</label>
                            <input type="text" class="form-control" id="phone_number" name="phone_number" value="{{ $customer->phone_number }}" oninput="limitNumberLength(this, 15);" required />
                            <div class="invalid-feedback fw-bold">Por favor especifique su número de teléfono.</div>
                        </div>
                    </div>
                    <div class="col-12 col-md-12"><hr class="text-dark" /></div>
                    <div class="col-12 col-md-12"><h1 class="display-5 text-center fw-bold">Dirección</h1></div>
                    <div class="col-12 col-md-12"><hr class="text-dark" /></div>
                    <div class="col-12 col-md-4">
                        <div class="mb-3">
                            <label class="form-label">Departamento</label>
                            <select class="form-select" id="department_code" name="department_code" onchange="loadProvince();" required>
                                <option value="" selected>Seleccione Departamento</option>
                                @foreach ($departments as $item)
                                    @if($item->department_code === $ubigeo->department_code)
                                        <option value="{{ $item->department_code }}" selected>{{ $item->description }}</option>
                                    @else
                                        <option value="{{ $item->department_code }}">{{ $item->description }}</option>
                                    @endif
                                @endforeach
                            </select>
                            <div class="invalid-feedback fw-bold">Por favor seleccione el departamento.</div>
                        </div>
                    </div>
                    <div class="col-12 col-md-4">
                        <div class="mb-3">
                            <label class="form-label">Provincia</label>
                            <select class="form-select" id="province_code" name="province_code" onchange="loadDistrict();" required>
                                <option value="" selected>Seleccione Provincia</option>
                                @foreach ($provinces as $item)
                                    @if($item->province_code === $ubigeo->province_code)
                                        <option value="{{ $item->province_code }}" selected>{{ $item->description }}</option>
                                    @else
                                        <option value="{{ $item->province_code }}">{{ $item->description }}</option>
                                    @endif
                                @endforeach
                            </select>
                            <div class="invalid-feedback fw-bold">Por favor seleccione la provincia.</div>
                        </div>
                    </div>
                    <div class="col-12 col-md-4">
                        <div class="mb-3">
                            <label class="form-label">Distrito</label>
                            <select class="form-select" id="district_code" name="district_code" onchange="onSelUbigeo();" required>
                                <option value="" selected>Seleccione Distrito</option>
                                @foreach ($districts as $item)
                                    @if($item->district_code === $ubigeo->district_code)
                                        <option value="{{ $item->id }}" selected>{{ $item->description }}</option>
                                    @else
                                        <option value="{{ $item->id }}">{{ $item->description }}</option>
                                    @endif
                                @endforeach
                            </select>
                            <div class="invalid-feedback fw-bold">Por favor seleccione el distrito.</div>
                        </div>
                    </div>
                    <div class="col-12 col-md-12">
                        <div class="mb-3">
                            <label class="form-label">Domicilio</label>
                            <input type="text" class="form-control" id="address" name="address" value="{{ $customer->address }}" maxlength="255" required />
                            <div class="invalid-feedback fw-bold">Por favor especifique su domicilio.</div>
                        </div>
                    </div>
                    <div class="col-12 col-md-12">
                        <div class="mb-3 pt-4">
                            <button type="submit" class="btn btn-dark bg-gradient w-100 fw-bold p-3"><i class="fas fa-address-card me-2"></i>Actualizar Datos</button>
                        </div>
                    </div>
                </div>
            </form>
            <form action="/client/account/password/{{ $customer->id }}" method="POST" class="needs-validation" novalidate>
                @csrf
                @method('PUT')
                <div class="row g-6 p-4">
                <div class="col-12 col-md-12"><hr class="text-dark" /></div>
                    <div class="col-12 col-md-12"><h1 class="display-5 text-center fw-bold">Configuración</h1></div>
                    <div class="col-12 col-md-12"><hr class="text-dark" /></div>
                    <div class="col-12 col-md-3">
                        <div class="mb-3">
                            <label class="form-label">Contraseña</label>
                            <input type="password" class="form-control" id="access" name="access" maxlength="50" required />
                            <div class="invalid-feedback fw-bold">Por favor especifique su contraseña.</div>
                        </div>
                    </div>
                    <div class="col-12 col-md-3">
                        <div class="mb-3">
                            <label class="form-label">Repetir Contraseña</label>
                            <input type="password" class="form-control" id="access_repeat" name="access_repeat" maxlength="50" required />
                            <div class="invalid-feedback fw-bold">Por favor repita su contraseña.</div>
                        </div>
                    </div>
                    <div class="col-12 col-md-3">
                        <div class="mb-3">
                            <label class="form-label text-transparent">&nbsp;</label>
                            <button type="button" class="btn btn-primary bg-gradient w-100" onclick="generatePassword();"><i class="fas fa-key me-3"></i>Generar Contraseña</button>
                        </div>
                    </div>
                    <div class="col-12 col-md-3">
                        <div class="mb-3">
                            <label class="form-label text-transparent">&nbsp;</label>
                            <button type="submit" class="btn btn-dark bg-gradient w-100"><i class="fas fa-key me-3"></i>Actualizar Contraseña</button>
                        </div>
                    </div>
                    <div class="col-12 col-md-12"><hr class="text-dark" /></div>
                </div>
            </form>
        </article>
    </section>
@endsection
@section('scripts')
    <script>
        (() => {
            'use strict'
            const forms = document.querySelectorAll('.needs-validation')
            Array.from(forms).forEach(form => {
                form.addEventListener('submit', event => {
                    if (!form.checkValidity()) {
                        event.preventDefault()
                        event.stopPropagation()
                    }
                    form.classList.add('was-validated')
                }, false)
            })
        })()
        function limitNumberLength(element, maxLength) {
            if (element.value.length > maxLength) {
                element.value = element.value.slice(0, maxLength);
            }
        }
    </script>
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
        var Password = {
            _pattern : /[a-zA-Z0-9_\-\+\.]/,
            _getRandomByte : function() {
                if(window.crypto && window.crypto.getRandomValues) {
                    var result = new Uint8Array(1);
                    window.crypto.getRandomValues(result);
                    return result[0];
                } else if(window.msCrypto && window.msCrypto.getRandomValues) {
                    var result = new Uint8Array(1);
                    window.msCrypto.getRandomValues(result);
                    return result[0];
                } else {
                    return Math.floor(Math.random() * 256);
                }
            },
            generate : function(length) {
                return Array.apply(null, {'length': length}).map(function() {
                    var result;
                    while(true) {
                        result = String.fromCharCode(this._getRandomByte());
                        if(this._pattern.test(result)) { return result; }
                    }
                }, this).join('');
            }
        };
        function generatePassword() {
            $('#access, #access_repeat').val(Password.generate(16));
        }
    </script>
@endsection