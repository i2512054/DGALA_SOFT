@extends('layouts.client.app-layout-website')
@section('content')
    <style>
        .zoom { transition: transform .5s; height: 120px; }
        .zoom:hover { transform: scale(1.5); }
        .zoomCart { transition: transform .5s; height: 90px; }
        .zoomCart:hover { transform: scale(1.5); }

        .stepper-wrapper { margin-top: auto; display: flex; justify-content: space-between; margin-bottom: 20px; }
        .stepper-item { position: relative; display: flex; flex-direction: column; align-items: center; flex: 1; @media (max-width: 768px) { font-size: 12px; } }
        .stepper-item::before { position: absolute; content: ""; border-bottom: 2px solid #ccc; width: 100%; top: 20px; left: -50%; z-index: 2; }
        .stepper-item::after { position: absolute; content: ""; border-bottom: 2px solid #ccc; width: 100%; top: 20px; left: 50%; z-index: 2; }
        .stepper-item .step-counter { position: relative; z-index: 5; display: flex; justify-content: center; align-items: center; width: 40px; height: 40px; border-radius: 50%; background: #ccc; margin-bottom: 6px; }
        .stepper-item.active { font-weight: bold; }
        .stepper-item.completed .step-counter { background-color:rgb(0, 0, 0); }
        .stepper-item.completed::after { position: absolute; content: ""; border-bottom: 2px solid rgb(0, 0, 0); width: 100%; top: 20px; left: 50%; z-index: 3; }
        .stepper-item:first-child::before { content: none; }
        .stepper-item:last-child::after { content: none; }
    </style>
    <!--<section>
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
    </section>-->
    <section>
        <div class="container-fluid p-4">
            <div class="row mb-4">
                <div class="col">
                    <h2 class="display-4 fw-bold text-center">CONFIGURAR ENTREGA DE PRODUCTOS</h2>
                </div>
            </div>
            <div class="row">
                <div class="col">
                    <div class="stepper-wrapper">
                        <div class="stepper-item completed">
                            <div class="step-counter"><i class="fas fa-shopping-cart text-light"></i></div>
                            <div class="step-name">Carrito</div>
                        </div>
                        <div class="stepper-item completed">
                            <div class="step-counter"><i class="fas fa-truck text-light"></i></div>
                            <div class="step-name">Entrega</div>
                        </div>
                        <div class="stepper-item active">
                            <div class="step-counter"><i class="fas fa-money-bill-alt"></i></div>
                            <div class="step-name">Pago</div>
                        </div>
                    </div>
                </div>
            </div>

            <form action="/payment/delivery/store" method="POST">
                @csrf
                <input type="hidden" id="latitude" name="latitude" value="0.0" />
                <input type="hidden" id="longitude" name="longitude" value="0.0" />
                <div class="row">
                    <div class="col-12 col-md-6 mb-3">
                        <div class="mb-3">
                            <label for="" class="form-label">Tipo de Envío</label>
                            <select class="form-select w-100" style="height:38.18px;" id="delivery_type_id" name="delivery_type_id" required>
                                @foreach($deliveryTypes as $item)
                                    <option value="{{ $item->id }}">{{ $item->name }}</option>
                                @endforeach
                            </select>
                        </div>
                    </div>
                    <div class="col-12 col-md-6 mb-3">
                        <div class="mb-3">
                            <label class="form-label">¿Quién recibe?</label>
                            <input type="text" class="form-control" id="receive" name="receive" value="" required maxlength="150" />
                        </div>
                    </div>
                    <div class="col-12 col-md-4 mb-3">
                        <div class="mb-3">
                            <label class="form-label">Departamento</label>
                            <select class="form-select" id="department_code" name="department_code" onchange="loadProvince();" required>
                                <option value="" selected>Seleccione Departamento</option>
                                @foreach ($ubigeos as $item)
                                    <option value="{{ $item->department_code }}">{{ $item->description }}</option>
                                @endforeach
                            </select>
                            <div class="invalid-feedback fw-bold">Por favor seleccione el departamento.</div>
                        </div>
                    </div>
                    <div class="col-12 col-md-4 mb-3">
                        <div class="mb-3">
                            <label class="form-label">Provincia</label>
                            <select class="form-select" id="province_code" name="province_code" onchange="loadDistrict();" required>
                                <option value="" selected>Seleccione Provincia</option>
                            </select>
                            <div class="invalid-feedback fw-bold">Por favor seleccione la provincia.</div>
                        </div>
                    </div>
                    <div class="col-12 col-md-4 mb-3">
                        <div class="mb-3">
                            <label class="form-label">Distrito</label>
                            <select class="form-select" id="district_code" name="district_code" onchange="onSelUbigeo();" required>
                                <option value="" selected>Seleccione Distrito</option>
                            </select>
                            <div class="invalid-feedback fw-bold">Por favor seleccione el distrito.</div>
                        </div>
                    </div>
                    <div class="col-12 col-md-4 mb-3">
                        <div class="mb-3">
                            <label class="form-label">Avenida / Calle / Jirón</label>
                            <input type="text" class="form-control" id="address" name="address" value="" required maxlength="255" />
                        </div>
                    </div>
                    <div class="col-12 col-md-4 mb-3">
                        <div class="mb-3">
                            <label class="form-label">Número</label>
                            <input type="text" class="form-control" id="num1" name="num1" value="" required maxlength="100" />
                        </div>
                    </div>
                    <div class="col-12 col-md-4 mb-3">
                        <div class="mb-3">
                            <label class="form-label">Dpto. / Interior / Piso / Lote / Bloque (opcional)</label>
                            <input type="text" class="form-control" id="num2" name="num2" value="" required maxlength="100" />
                        </div>
                    </div>
                </div>
                <div class="row justify-content-center">
                    <div class="d-flex justify-content-between mt-4">
                        <a href="/payment/confirm" class="btn btn-dark"><i class="fas fa-cart-shopping me-2"></i>Volver a Confirmar Compra de Productos</a>
                        <button type="submit" class="btn btn-dark"><i class="fas fa-money-bill-transfer me-2"></i>Configurar Modo de Pago</button>
                    </div>
                </div>
            </form>

        </div>
    </section>
@endsection
@section('scripts')
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
                let sHTML = "<option value='" + item.district_code + "'>" + item.description + "</option>";
                $('#district_code').append(sHTML);
            }
        }
        function onSelUbigeo() {
            let ubigeoId = $('#district_code').val();
            //$('#ubigeo_id').val(ubigeoId);
        }
    </script>
@endsection