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
                    <h2 class="display-4 fw-bold text-center">CONFIGURAR MODO DE PAGO</h2>
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
                        <div class="stepper-item completed">
                            <div class="step-counter"><i class="fas fa-money-bill-alt text-light"></i></div>
                            <div class="step-name">Pago</div>
                        </div>
                    </div>
                </div>
            </div>
            
            <form action="/payment/completed/store" method="POST">
                @csrf
                <div class="row">
                    <div class="col-12 col-md-4 mb-3">
                        <div class="mb-3">
                            <label for="" class="form-label">Tipo de Tarjeta</label>
                            <select class="form-select w-100" style="height:38.18px;" id="card_type_id" name="card_type_id" required>
                                @foreach($cardTypes as $item)
                                    <option value="{{ $item->id }}">{{ $item->name }}</option>
                                @endforeach
                            </select>
                        </div>
                    </div>
                    <div class="col-12 col-md-4 mb-3">
                        <div class="mb-3">
                            <label for="" class="form-label">Banco</label>
                            <select class="form-select w-100" style="height:38.18px;" id="bank_id" name="bank_id" required>
                                @foreach($banks as $item)
                                    <option value="{{ $item->id }}">{{ $item->name }}</option>
                                @endforeach
                            </select>
                        </div>
                    </div>
                    <div class="col-12 col-md-4 mb-3">
                        <div class="mb-3">
                            <label class="form-label">Número de Tarjeta</label>
                            <input type="text" class="form-control text-center" id="card_number" name="card_number" placeholder="9999-9999-9999-9999" data-inputmask="'mask': '9999-9999-9999-9999'" required>
                        </div>
                    </div>


                    <div class="col-12 col-md-3 mb-3">
                        <div class="mb-3">
                            <label class="form-label">Expiración</label>
                            <input type="text" class="form-control text-center" id="card_expire" name="card_expire" placeholder="MM/YY" data-inputmask="'mask': '99/99'" required />
                        </div>
                    </div>
                    <div class="col-12 col-md-3 mb-3">
                        <div class="mb-3">
                            <label class="form-label">Código de Seguridad</label>
                            <input type="text" class="form-control text-center" id="card_cvv" name="card_cvv" placeholder="CVV" data-inputmask="'mask': '999'" required />
                        </div>
                    </div>
                    <div class="col-12 col-md-3 mb-3">
                        <div class="mb-3">
                            <label for="" class="form-label">Tipo Documento</label>
                            <select class="form-select w-100" style="height:38.18px;" id="document_type_id" name="document_type_id" required>
                                @foreach($documentTypes as $item)
                                    <option value="{{ $item->id }}">{{ $item->name }}</option>
                                @endforeach
                            </select>
                        </div>
                    </div>
                    <div class="col-12 col-md-3 mb-3">
                        <div class="mb-3">
                            <label class="form-label">Nº de Documento</label>
                            <input type="text" class="form-control" id="document_number" name="document_number" value="" required maxlength="30" />
                        </div>
                    </div>
                </div>
                <div class="row justify-content-center">
                    <div class="d-flex justify-content-between mt-4">
                        <a href="/payment/delivery" class="btn btn-dark"><i class="fas fa-truck-arrow-right me-2"></i>Volver a Configurar Entrega</a>
                        <button type="submit" class="btn btn-dark"><i class="fas fa-money-bill-transfer me-2"></i>Realizar Pago de Productos</button>
                    </div>
                </div>
            </form>

        </div>
    </section>
@endsection
@section('scripts')
    <script>
        $('#card_number, #card_expire, #card_cvv').inputmask();
    </script>
@endsection