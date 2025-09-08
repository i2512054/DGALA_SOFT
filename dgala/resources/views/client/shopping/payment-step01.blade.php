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
                    <h2 class="display-4 fw-bold text-center">CONFIRMAR COMPRA DE PRODUCTOS</h2>
                </div>
            </div>
            <div class="row">
                <div class="col">
                    <div class="stepper-wrapper">
                        <div class="stepper-item completed">
                            <div class="step-counter"><i class="fas fa-shopping-cart text-light"></i></div>
                            <div class="step-name">Carrito</div>
                        </div>
                        <div class="stepper-item active">
                            <div class="step-counter"><i class="fas fa-truck"></i></div>
                            <div class="step-name">Entrega</div>
                        </div>
                        <div class="stepper-item active">
                            <div class="step-counter"><i class="fas fa-money-bill-alt"></i></div>
                            <div class="step-name">Pago</div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row justify-content-center">
                @if(empty($cart))
                    <div class="col-12 mt-3 mb-3">
                        <div class="card">
                            <div class="card-body text-center">
                                <p>Su carrito de compras está vacío, por favor seleccione productos para realizar la compra.</p>
                                <a href="/catalog" class="btn btn-dark"><i class="fas fa-cart-shopping me-2"></i>Seguir comprando</a>
                            </div>
                        </div>
                    </div>
                @else
                    <div class="table-responsive">
                        <table class="table table-bordered w-100">
                            <thead>
                                <tr>
                                    <th class="bg-dark bg-gradient"></th>
                                    <th class="bg-dark bg-gradient"></th>
                                    <th class="bg-dark bg-gradient text-light text-center pt-3 pb-3">Producto</th>
                                    <th class="bg-dark bg-gradient text-light text-center pt-3 pb-3">Precio</th>
                                    <th class="bg-dark bg-gradient text-light text-center pt-3 pb-3">Cantidad</th>
                                    <th class="bg-dark bg-gradient text-light text-center pt-3 pb-3">Importe</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($cart as $item)
                                    <tr class="align-middle">
                                        <td width="40">
                                            <form action="/carts/remove" method="POST">
                                                @csrf
                                                @method('DELETE')
                                                <input type="hidden" name="id" value="{{ $item['id'] }}" />
                                                <button type="submit" class="btn btn-danger"><i class="fas fa-xmark"></i></button>
                                            </form>
                                        </td>
                                        <td width="150"><div class="overflow-hidden"><img src="{{ Storage::url($item['link_image']) }}" class="card-img-top zoomCart" height="100" /></div></td>
                                        <td>{{ $item['name'] }}</td>
                                        <td class="text-end">S/. {{ number_format($item['sales_price'],2 ) }}</td>
                                        <td class="text-center" width="140">
                                            <div class="input-group mb-3">
                                                <input type="text" data-id="{{ $item['id'] }}" id="quantity" name="quantity" class="form-control form-control-sm text-center" value="{{ $item['quantity'] }}" readonly />
                                            </div>
                                        </td>
                                        <td class="text-end">S/. {{ number_format($item['sales_price'] * $item['quantity'], 2) }}</td>
                                    </tr>
                                @endforeach
                            </tbody>
                            <tfoot>
                                <tr>
                                    <td colspan="5" class="text-end fw-bold">Sub Total:</td>
                                    <td class="text-end fw-bold">S/. {{ number_format(session()->get('amountCart'), 2) }}</td>
                                </tr>
                                <tr>
                                    <td colspan="5" class="text-end fw-bold">I.G.V. (18%):</td>
                                    <td class="text-end fw-bold">S/. {{ number_format(session()->get('amountCart') * 0.18, 2) }}</td>
                                </tr>
                                <tr>
                                    <td colspan="5" class="text-end fw-bold">Total:</td>
                                    <td class="text-end fw-bold">S/. {{ number_format(session()->get('amountCart') + (session()->get('amountCart') * 0.18) , 2) }}</td>
                                </tr>
                            </tfoot>
                        </table>
                    </div>
                    <div class="d-flex justify-content-between mt-4">
                        <a href="/carts" class="btn btn-dark"><i class="fas fa-cart-shopping me-2"></i>Volver al Carrito de Compras</a>
                        <a href="/payment/delivery" class="btn btn-dark"><i class="fas fa-truck me-2"></i>Configurar Entrega</a>
                    </div>
                @endif
            </div>
        </div>
    </section>
@endsection