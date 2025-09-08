@extends('layouts.client.app-layout-website')
@section('content')
    <style>
        .zoom { transition: transform .5s; height: 120px; }
        .zoom:hover { transform: scale(1.5); }
        .zoomCart { transition: transform .5s; height: 90px; }
        .zoomCart:hover { transform: scale(1.5); }
    </style>
    @if (session('customer_id'))
        <input type="hidden" id="customer_id" value="{{ session('customer_id') }}" />
    @else
        <input type="hidden" id="customer_id" value="" />
    @endif
    <form id="frm" action="/carts/update" method="POST">
        @csrf
        @method('PUT')
        <input type="hidden" id="id" name="id" />
        <input type="hidden" id="quantity" name="quantity" />
    </form>
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
            <div class="row mb-4">
                <div class="col">
                    <h2 class="display-4 fw-bold text-center">CARRITO DE COMPRAS</h2>
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
                                                <button type="button" onclick="remove(this, {{ $item['id'] }});" class="btn btn-sm btn-dark"><i class="fas fa-minus"></i></button>
                                                <input type="text" data-id="{{ $item['id'] }}" id="quantity" name="quantity" class="form-control form-control-sm text-center" value="{{ $item['quantity'] }}" readonly />
                                                <button type="button" onclick="add(this, {{ $item['id'] }});" class="btn btn-sm btn-dark"><i class="fas fa-plus"></i></button>
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
                        <form action="/catalog" method="GET">
                            <button type="submit" class="btn btn-dark"><i class="fas fa-cart-shopping me-2"></i>Seguir Comprando</button>
                        </form>
                        <form action="/carts/clear" method="POST">
                            @csrf
                            @method('DELETE')
                            <button type="submit" class="btn btn-danger"><i class="fas fa-trash-can me-2"></i>Vaciar Carrito de Compras</button>
                        </form>
                        @if (session('customer_id'))
                            <a href="/payment/confirm" class="btn btn-dark"><i class="fas fa-dolly me-2"></i>Iniciar Pago de Productos</a>
                        @else
                            <button class="btn btn-dark" onclick="onVerifySessionActive();"><i class="fas fa-dolly me-2"></i>Iniciar Pago de Productos</button>    
                        @endif
                    </div>
                @endif
            </div>
        </div>
    </section>
    <script>
        function add(obj, id) {
            $(obj).prop('disabled', true);
            let quantity = $('input[id="quantity"][data-id="' + id + '"]').val();
            quantity++;
            $('input[id="quantity"][data-id="' + id + '"]').val(quantity);
            $('#id').val(id);
            $('#quantity').val(quantity);
            $('#frm').submit();
        }
        function remove(obj, id) {
            $(obj).prop('disabled', true);
            let quantity = $('input[id="quantity"][data-id="' + id + '"]').val();
            quantity--;
            if(quantity < 1) { quantity = 1; }
            $('input[id="quantity"][data-id="' + id + '"]').val(quantity);
            $('#id').val(id);
            $('#quantity').val(quantity);
            $('#frm').submit();
        }
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