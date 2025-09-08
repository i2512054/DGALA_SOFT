@extends('layouts.client.app-layout-website')
@section('content')
    <style>
        .parallax {
            background-image: url("../../assets/img/parallax_dgala.jpg");
            min-height: 500px;
            background-attachment: fixed;
            background-position: center;
            background-repeat: no-repeat;
            background-size: cover;
        }
        .section-ring {
            background-image: url(../../assets/img/dgala_ccrear.png); 
            background-size: cover; 
            background-repeat: no-repeat;
            padding: 32px 64px 32px 64px;
        }
        .section-newsletter {
            background-image: url(../../assets/img/newsletter.png); 
            background-size: cover; 
            background-repeat: no-repeat;
            padding: 32px 64px 32px 64px;
        }
        .card-gradient-item { background-image: linear-gradient( 135deg, #f3ba00 20%, #ffaf03 100%); }
        .zoom { transition: transform .5s; }
        .zoom:hover { transform: scale(1.5); }

        .zoomCart { transition: transform .5s; height: 90px; }
        .zoomCart:hover { transform: scale(1.5); }

        .room-content { background-color: rgba(20, 20, 20, 0.9); padding:0px 40px; }
        .room-content h3{ color: #FAB702; font-size: 17px; font-weight:400; letter-spacing: 3px; text-transform: uppercase; }
        .room-content p{ margin: 0 0 10px; font-size:13px; font-weight: 400; color: #ddd; letter-spacing: 1px; line-height: 1.8em; }
        .dgala-prod { color:#4d2e00; }
        .section-bg-01 { background-color: rgba(20, 20, 20, 1); }
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
                    <h1 class="display-3 text-center mt-5 text-light fw-bold">Nuestros mejores productos</h1>
                </div>
            </div>
            <div class="row">
                <div class="col">
                    <p class="fs-5 mt-4 p-4 text-light" align="justify">
                        Nuestros mejores y mas recientes diseños, listados en orden de popularidad, sin duda todas 
                        son piezas excepcionales, fabricados a mano con los mejores materiales para buscar ese 
                        brillo excepcional.
                    </p>
                </div>
            </div>
            <div class="row row-cols-1 row-cols-md-3 g-6 p-4">
                <div class="col col-md-6 p-4">
                    <div class="overflow-hidden">
                        <img src="../../assets/img/group_01.png" class="card-img-top zoom" />
                    </div>
                </div>
                <div class="col col-md-6 p-4">
                    <div class="row">
                        <div class="col">
                            <div class="overflow-hidden">
                                <img src="../../assets/img/group_02.png" class="card-img-top zoom" />
                            </div>                                    
                        </div>
                    </div>
                    <div class="row mt-4">
                        <div class="col">
                            <div class="overflow-hidden">
                                <img src="../../assets/img/group_03.png" class="card-img-top zoom" />
                            </div>
                        </div>
                        <div class="col">
                            <div class="overflow-hidden">
                                <img src="../../assets/img/group_04.png" class="card-img-top zoom" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </article>
    </section>
    <section class="bg-black">
        <article>
            <div class="row">
                <div class="col">
                    <h1 class="display-3 text-center mt-5 text-light fw-bold">Joyas que tenemos para tí</h1>
                </div>
            </div>
            <div class="row row-cols-1 row-cols-md-3 g-6 p-4">
                @foreach($products as $item)
                    <div class="col p-4">
                        <div class="card border border-0 m-4">
                            <div class="overflow-hidden">
                                <img src="{{ Storage::url($item->link_image) }}" class="card-img-top zoom" />
                            </div>
                            <div class="card-body text-center" style="height: 100px;">
                                <p class="card-text p-4 fw-bold dgala-prod">{{ $item->name }}</p>
                            </div>
                            <div class="card-footer border border-0 text-center card-gradient-item pb-4">
                                <div class="mt-3 mb-3 text-center">
                                    <p class="fs-4 fw-bold">S/. {{ number_format($item->sales_price, 2) }}</p>
                                    <form action="{{ route('cart.add') }}" method="POST">
                                        @csrf
                                        <input type="hidden" name="id" value="{{ $item->id }}" />
                                        <button type="submit" class="btn btn-dark bg-gradient w-100"><i class="fas fa-cart-plus me-2"></i>Agregar al Carrito</button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                @endforeach
            </div>
        </article>
    </section>
    <section class="section-bg-01 pb-5">
        <article>
            <div class="row">
                <div class="col">
                    <h1 class="display-3 text-center mt-5 mb-5 text-light fw-bold">Restauraciones</h1>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <div class="room-content d-flex align-items-center h-100">
                        <div class="p-4">
                            <h3>Renovación de tus joyas</h3>	
                            <p align="justify" class="mt-4 mb-4">
                                ¿Tienes una pieza especial que te gustaría restaurar?
                                En D'GALA, restauramos tus piezas puliendo, desabollando y con baños de plata 1000, 
                                devolviéndoles su vida y belleza.
                            </p>
                            <a href="#" class="btn btn-warning bg-gradient p-3">Ver detalles<i class="fas fa-chevron-right ms-2"></i></a>	
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="room-image">
                        <div id="before-after" class="twentytwenty-container">
                            <img src="../../assets/img/afterBefore/after2.jpg" />
                            <img src="../../assets/img/afterBefore/before2.jpg" />
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col"><hr class="text-light" /></div>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <div class="room-image">
                        <div id="before-after" class="twentytwenty-container">
                            <img src="../../assets/img/afterBefore/after1.jpg" />
                            <img src="../../assets/img/afterBefore/before1.jpg" />
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="room-content d-flex align-items-center h-100">
                        <div class="p-4">
                            <h3>Renovación de tus joyas</h3>	
                            <p align="justify" class="mt-4 mb-4">
                                Contamos con un amplio taller de joyería con las ultimas tecnologías del mercado, atendido por 
                                expertos para la renovación y mantenimientos de tus JOYAS.
                            </p>
                            <a href="#" class="btn btn-warning bg-gradient p-3">Ver detalles<i class="fas fa-chevron-right ms-2"></i></a>	
                        </div>
                    </div>
                </div>
            </div>
        </article>
    </section>
    <section class="section-ring">
        <article>
            <div class="row mt-5">
                <div class="col-md-12">
                    <div class="">
                        <p align="justify" class="fs-5 text-light mb-5">
                            D'GALA, la primera joyería en Perú que te invita a co-crear el anillo de compromiso de tus sueños y 
                            seleccionar el diamante que marcará el comienzo de tu historia. Existe la creencia de que el diamante 
                            elige a su dueño, estamos aquí para hacer realidad ese vínculo. Los anillos que creamos en colaboración 
                            con nuestros clientes son la expresión perfecta de amor y compromiso. Conoce los pasos para comenzar a 
                            co-crear tu anillo de compromiso. Tu diamante especial te espera, ¡Permítenos encontrarla juntos!
                        </p>
                        <h1 class="display-3 text-light text-center fw-bold mb-5">ENGAGEMENT RING EXPERIENCE</h1>
                    </div>
                </div>
            </div>
        </article>
    </section>
    <section class="section-newsletter">
        <article>
            <div class="row mt-5 mb-5">
                <div class="col-md-12">
                    <div class="">
                        <h1 class="display-3 text-light text-center fw-bold mb-5">SUSCRÍBASE AL NEWSLETTER</h1>
                        <p align="justify" class="fs-5 text-light mb-4">
                            ¡No te pierdas ninguna de nuestras ofertas!, entérate de todas nuestras novedades y promociones.
                            <br /><br />
                        </p>
                        <div class="input-group">
                            <input type="text" class="form-control" placeholder="Especifique su correo electrónico" aria-describedby="button-addon2">
                            <button class="btn btn-lg btn-dark" type="button" id="button-addon2">Suscribase</button>
                        </div>
                    </div>
                </div>
            </div>
        </article>
    </section>
@endsection