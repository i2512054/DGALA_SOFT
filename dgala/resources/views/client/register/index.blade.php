@extends('layouts.client.app-layout-website')
@section('content')
    <style>
        .parallax {
            background-image: linear-gradient(rgba(0, 0, 0, 0.527),rgba(0, 0, 0, 0.8)), url("../../assets/img/parallax_register.jpg");
            min-height: 500px;
            background-attachment: fixed;
            background-position: center;
            background-repeat: no-repeat;
            background-size: cover;
        }
        .zoom { transition: transform .5s; }
        .zoom:hover { transform: scale(1.5); }
    </style>
    <section>
        <article>
            <div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
                <div class="carousel-indicators">
                    <button style="height: 28px; border-radius: 50%; margin-right: 16px;" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active bg-black bg-gradient" aria-current="true" aria-label="Slide 1"></button>
                    <button style="height: 28px; border-radius: 50%; margin-right: 16px;" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" class="bg-black bg-gradient" aria-label="Slide 2"></button>
                    <button style="height: 28px; border-radius: 50%; margin-right: 16px;" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" class="bg-black bg-gradient" aria-label="Slide 3"></button>
                    <button style="height: 28px; border-radius: 50%;" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="3" class="bg-black bg-gradient" aria-label="Slide 4"></button>
                </div>
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img src="../../assets/img/slide_j01.jpg" class="d-block w-100" style="height: 600px;" />
                        <div class="carousel-caption d-none d-md-block">
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img src="../../assets/img/slide_j02.jpg" class="d-block w-100" style="height: 600px;" />
                        <div class="carousel-caption d-none d-md-block">
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img src="../../assets/img/slide_j03.jpg" class="d-block w-100" style="height: 600px;" />
                        <div class="carousel-caption d-none d-md-block">
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img src="../../assets/img/slide_j04.jpg" class="d-block w-100" style="height: 600px;" />
                        <div class="carousel-caption d-none d-md-block">
                        </div>
                    </div>
                </div>
                <button class="carousel-control-prev"type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Next</span>
                </button>
            </div>
        </article>
    </section>
    <section class="parallax">
        <article>
            <div class="row">
                <div class="col">
                    <h1 class="display-3 text-center mt-5 text-light fw-bold">Regístrese</h1>
                </div>
            </div>
            <div class="row">
                <div class="col">
                    <p class="fs-5 mt-4 p-4 text-light" align="justify">
                        D'Gala lanza colecciones nuevas periódicamente ofreciendo diseños exclusivos y personalizables. 
                        Todas nuestras joyas son elaboradas cuidadosamente prestando atención a los detalles más mínimos 
                        que resultan en piezas impecables de gran belleza y brillo.
                    </p>
                </div>
            </div>
            <div class="row"><div class="col"><hr class="text-light" /></div></div>
            <form action="/register/create" method="POST" class="needs-validation" novalidate>
                @csrf
                <input type="hidden" name="ubigeo_id" id="ubigeo_id" />
                <div class="row g-6 p-4">
                    <div class="col-12 col-md-4">
                        <div class="mb-3">
                            <label class="form-label text-light">Nombres</label>
                            <input type="text" class="form-control" id="first_name" name="first_name" required />
                            <div class="invalid-feedback fw-bold">Por favor especifique sus nombres.</div>
                        </div>
                    </div>
                    <div class="col-12 col-md-4">
                        <div class="mb-3">
                            <label class="form-label text-light">Apellido Paterno</label>
                            <input type="text" class="form-control" id="middle_name" name="middle_name" required />
                            <div class="invalid-feedback fw-bold">Por favor especifique su apellido paterno.</div>
                        </div>
                    </div>
                    <div class="col-12 col-md-4">
                        <div class="mb-3">
                            <label class="form-label text-light">Apellido Materno</label>
                            <input type="text" class="form-control" id="last_name" name="last_name" required />
                            <div class="invalid-feedback fw-bold">Por favor especifique su apellido materno.</div>
                        </div>
                    </div>
                    <div class="col-12 col-md-8">
                        <div class="mb-3">
                            <label class="form-label text-light">Correo Electrónico</label>
                            <input type="email" class="form-control" id="email" name="email" required />
                            <div class="invalid-feedback fw-bold">Por favor especifique su correo electrónico.</div>
                        </div>
                    </div>
                    <div class="col-12 col-md-4">
                        <div class="mb-3">
                            <label class="form-label text-light">Número de Teléfono</label>
                            <input type="text" class="form-control" id="phone_number" name="phone_number" required />
                            <div class="invalid-feedback fw-bold">Por favor especifique su número de teléfono.</div>
                        </div>
                    </div>
                    <!--<div class="col-12 col-md-4">
                        <div class="mb-3">
                            <label class="form-label text-light">Departamento</label>
                            <select class="form-select" id="department_code" name="department_code" onchange="loadProvince();" required>
                                <option value="" selected>Seleccione Departamento</option>
                                {{-- @foreach ($ubigeos as $item) --}}
                                    <option value="{{-- $item->department_code --}}">{{--  --}}</option>
                                {{-- @endforeach --}}
                            </select>
                            <div class="invalid-feedback fw-bold">Por favor seleccione el departamento.</div>
                        </div>
                    </div>
                    <div class="col-12 col-md-4">
                        <div class="mb-3">
                            <label class="form-label text-light">Provincia</label>
                            <select class="form-select" id="province_code" name="province_code" onchange="loadDistrict();" required>
                                <option value="" selected>Seleccione Provincia</option>
                            </select>
                            <div class="invalid-feedback fw-bold">Por favor seleccione la provincia.</div>
                        </div>
                    </div>
                    <div class="col-12 col-md-4">
                        <div class="mb-3">
                            <label class="form-label text-light">Distrito</label>
                            <select class="form-select" id="district_code" name="district_code" onchange="onSelUbigeo();" required>
                                <option value="" selected>Seleccione Distrito</option>
                            </select>
                            <div class="invalid-feedback fw-bold">Por favor seleccione el distrito.</div>
                        </div>
                    </div>
                    <div class="col-12 col-md-12">
                        <div class="mb-3">
                            <label class="form-label text-light">Domicilio</label>
                            <input type="text" class="form-control" id="address" name="address" required />
                            <div class="invalid-feedback fw-bold">Por favor especifique su domicilio.</div>
                        </div>
                    </div>-->
                    <div class="col-12 col-md-4">
                        <div class="mb-3">
                            <label class="form-label text-light">Contraseña</label>
                            <input type="password" class="form-control" id="access" name="access" required />
                            <div class="invalid-feedback fw-bold">Por favor especifique su contraseña.</div>
                        </div>
                    </div>
                    <div class="col-12 col-md-4">
                        <div class="mb-3">
                            <label class="form-label text-light">Repetir Contraseña</label>
                            <input type="password" class="form-control" id="access_repeat" name="access_repeat" required />
                            <div class="invalid-feedback fw-bold">Por favor repita su contraseña.</div>
                        </div>
                    </div>
                    <div class="col-12 col-md-4">
                        <div class="mb-3">
                            <label class="form-label text-transparent">Generar Contraseña</label>
                            <button type="button" class="btn btn-primary bg-gradient w-100" onclick="generatePassword();"><i class="fas fa-key me-3"></i>Generar Contraseña</button>
                        </div>
                    </div>
                    <div class="col-12 col-md 4">
                        <div class="mb-3 pt-4">
                            <button type="submit" class="btn btn-warning bg-gradient w-100 text-danger fw-bold p-3"><i class="fas fa-address-card me-2"></i>Registrarse</button>
                        </div>
                    </div>
                </div>
            </form>
        </article>
    </section>
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
    </script>
    <script>
        async function loadProvince() {
            let departmentCode = $('#department_code').val();
            const response = await fetch('/ubigeos/provinces/' + departmentCode, {
                method: "GET"
            });
            let json = await response.json();
            $('#province_code, #district_code').html("");
            $('#province_code').append("<option value='' selected>Seleccione Provincia ...</option>");
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
            $('#district_code').append("<option value='' selected>Seleccione Distrito ...</option>");
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