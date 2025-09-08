@extends('layouts.client.app-layout-website')
@section('content')
    <style>
        .zoom { transition: transform .5s; height: 610px; }
        .zoom:hover { transform: scale(1.5); }
        .zoomThumbnail { transition: transform .5s; height: 90px; }
        .zoomThumbnail:hover { transform: scale(1.5); }
        .zoomCart { transition: transform .5s; height: 90px; }
        .zoomCart:hover { transform: scale(1.5); }
    </style>
    @if (session('customer_id'))
        <input type="hidden" id="customer_id" value="{{ session('customer_id') }}" />
    @else
        <input type="hidden" id="customer_id" value="" />
    @endif
    @include('partials.modal-cart')
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

    <section>
        <div class="container-fluid p-4">
            <div class="row">
                <div class="col-12">
                    <div class="row mb-4">
                        <div class="col-1">
                            <div class="vstack gap-3">
                                <div class="overflow-hidden">
                                    <img src="{{ Storage::url($product->link_image) }}" class="card-img-top zoomThumbnail" />
                                </div>
                                <div class="overflow-hidden">
                                    <img src="{{ Storage::url($product->link_image) }}" class="card-img-top zoomThumbnail" />
                                </div>
                                <div class="overflow-hidden">
                                    <img src="{{ Storage::url($product->link_image) }}" class="card-img-top zoomThumbnail" />
                                </div>
                            </div>
                        </div>
                        <div class="col-6">
                            <div class="overflow-hidden">
                                <img src="{{ Storage::url($product->link_image) }}" class="card-img-top zoom" />
                            </div>
                        </div>
                        <div class="col-5">
                            <div class="vstack gap-4">
                                <span class="fs-1">{{ $product->name }}</span>
                                <span class="fs-3">{{ $product->description }}</span>
                                <span class="fs-4">Categoría: {{ $category->name }}</span>
                                <span class="fs-5">Color: {{ $product->color }}</span>
                                <span class="fs-5">Dimensión: {{ $product->dimension }}</span>
                                <span class="fs-5">Peso: {{ $product->weight }} gr.</span>
                                <span class="fs-5">Precio: S/. {{ number_format($product->sales_price, 2) }}</span>
                                <span class="fs-5">Stock: {{ $product->quantity }}</span>
                                <span class="fs-6 text-danger fw-bold">Nota: Los precios no incluyen I.G.V.</span>
                                <form action="/carts/add" method="POST">
                                    @csrf
                                    <input type="hidden" name="id" value="{{ $product->id }}" />
                                    <div class="hstack gap-3">
                                        <button type="submit" class="btn btn-danger bg-gradient w-50"><i class="fas fa-cart-plus me-2"></i>Agregar</button>
                                        @if (session('customer_id'))
                                            <a href="/payment/confirm" class="btn btn-dark w-50"><i class="fas fa-dolly me-2"></i>Iniciar Pago de Productos</a>
                                        @else
                                            <button type="button" class="btn btn-dark w-50" onclick="onVerifySessionActive();"><i class="fas fa-dolly me-2"></i>Iniciar Pago de Productos</button>    
                                        @endif
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection
@section('scripts')
    <script>
        function onShowMessage(title, message, idModal) {
            $('#messageLabel').html(title);
            $('#pModalMessage').html(message);
            $('#btAlertMessage').click();
            $('#bt-show-message-success').attr("data-bs-target", idModal);
        }
        function onVerifySessionActive() {
            let customerId = $('#customer_id').val();
            if(customerId === '') {
                onShowMessage("Carrito de Compras", "Para Iniciar el proceso de compra, es necesario que inicie sesión o en caso registrarse en nuestra plataforma de cliente", "");
                return;
            }
        }
    </script>
@endsection