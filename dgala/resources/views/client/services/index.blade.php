@extends('layouts.client.app-layout-website')
@section('content')
    <style>
        .parallax {
            background-image: linear-gradient(rgba(0, 0, 0, 0.527),rgba(0, 0, 0, 0.8)), url("../../assets/img/parallax_service.jpg");
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
                    <h1 class="display-3 text-center mt-5 text-light fw-bold">Servicios</h1>
                </div>
            </div>
            <div class="row">
                <div class="col">
                    <p class="fs-5 mt-4 p-4 text-light" align="justify">
                        Somos la única joyería en el Perú que cuenta con taller propio donde ofrecemos 
                        servicios únicos y especiales a nuestros clientes.
                    </p>
                </div>
            </div>
            <div class="row"><div class="col"><hr class="text-light" /></div></div>
            <div class="row row-cols-1 row-cols-md-3 g-6 p-4">
                <div class="col col-md-4 p-4">
                    <div class="overflow-hidden">
                        <img src="../../assets/img/man_jewerly_01.jpg" class="card-img-top zoom" />
                    </div>
                </div>
                <div class="col col-md-8 ps-2 pe-2">
                    <h1 class="display-5 text-light text-center fw-bold mb-5">Mantenimiento de Joya</h1>
                    <p class="fs-5 mt-4 text-light" align="justify">
                        Hacemos que tus joyas brillen como el primer día que las compraste y te obsequiamos el servicio de 
                        pulido, lustrado y vaporeta una vez al año.
                    </p>
                </div>
            </div>
            <div class="row"><div class="col"><hr class="text-light" /></div></div>
            <div class="row row-cols-1 row-cols-md-3 g-6 p-4">
                <div class="col col-md-8 ps-2 pe-2">
                    <h1 class="display-5 text-light text-center fw-bold mb-5">Grabado</h1>
                    <p class="fs-5 mt-4 text-light" align="justify">
                        Personalizamos la joya que desees con el grabado de un nombre, huella digital, fecha o un mensaje especial.  
                        Convertimos tu regalo en un recuerdo para toda la vida.
                    </p>
                </div>
                <div class="col col-md-4 p-4">
                    <div class="overflow-hidden">
                        <img src="../../assets/img/man_jewerly_02.jpg" class="card-img-top zoom" />
                    </div>
                </div>
            </div>
            <div class="row"><div class="col"><hr class="text-light" /></div></div>
            <div class="row row-cols-1 row-cols-md-3 g-6 p-4">
                <div class="col col-md-4 p-4">
                    <div class="overflow-hidden">
                        <img src="../../assets/img/man_jewerly_03.jpg" class="card-img-top zoom" />
                    </div>
                </div>
                <div class="col col-md-8 ps-2 pe-2">
                    <h1 class="display-5 text-light text-center fw-bold mb-5">Diseño</h1>
                    <p class="fs-5 mt-4 text-light" align="justify">
                        Nuestra área de diseño se encarga de plasmar tu joya soñada. Contamos con un staff de talentosos 
                        diseñadores que se esfuerzan constantemente creando obras en donde se combina el diseño, arte e inspiración 
                        con lo último en tendencias globales.
                    </p>
                </div>
            </div>
            <div class="row"><div class="col"><hr class="text-light" /></div></div>
            <div class="row row-cols-1 row-cols-md-3 g-6 p-4">
                <div class="col col-md-8 ps-2 pe-2">
                    <h1 class="display-5 text-light text-center fw-bold mb-5">Ajuste de Talla</h1>
                    <p class="fs-5 mt-4 text-light" align="justify">
                        Reducimos y ampliamos la talla de anillos según la medida ideal de su dedo.
                    </p>
                </div>
                <div class="col col-md-4 p-4">
                    <div class="overflow-hidden">
                        <img src="../../assets/img/man_jewerly_04.jpg" class="card-img-top zoom" />
                    </div>
                </div>
            </div>
            <div class="row"><div class="col"><hr class="text-light" /></div></div>
            <div class="row row-cols-1 row-cols-md-3 g-6 p-4">
                <div class="col col-md-4 p-4">
                    <div class="overflow-hidden">
                        <img src="../../assets/img/man_jewerly_05.jpg" class="card-img-top zoom" />
                    </div>
                </div>
                <div class="col col-md-8 ps-2 pe-2">
                    <h1 class="display-5 text-light text-center fw-bold mb-5">Engaste de Diamante</h1>
                    <p class="fs-5 mt-4 text-light" align="justify">
                        Contamos con joyeros artesanos profesionales y experimentados quienes darán el resultado final de su joya ideal.
                    </p>
                </div>
            </div>
            <div class="row"><div class="col"><hr class="text-light" /></div></div>
            <div class="row row-cols-1 row-cols-md-3 g-6 p-4">
                <div class="col col-md-8 ps-2 pe-2">
                    <h1 class="display-5 text-light text-center fw-bold mb-5">Pasado de Perlas</h1>
                    <p class="fs-5 mt-4 text-light" align="justify">
                        Ofrecemos el servicio de pasado de perlas, con el cual podrás reutilizar tus hermosas piedras para elaborar tu joya ideal.
                    </p>
                </div>
                <div class="col col-md-4 p-4">
                    <div class="overflow-hidden">
                        <img src="../../assets/img/man_jewerly_06.jpg" class="card-img-top zoom" />
                    </div>
                </div>
            </div>
            <div class="row"><div class="col"><hr class="text-light" /></div></div>
            <div class="row row-cols-1 row-cols-md-3 g-6 p-4">
                <div class="col col-md-4 p-4">
                    <div class="overflow-hidden">
                        <img src="../../assets/img/man_jewerly_07.jpg" class="card-img-top zoom" />
                    </div>
                </div>
                <div class="col col-md-8 ps-2 pe-2">
                    <h1 class="display-5 text-light text-center fw-bold mb-5">Restauración</h1>
                    <p class="fs-5 mt-4 text-light" align="justify">
                        ¿Tienes una pieza especial que te gustaría restaurar? En D'GALA, restauramos tus piezas puliendo, 
                        desabollando y con baños de plata 1000, devolviéndoles su vida y belleza.
                    </p>
                </div>
            </div>
        </article>
    </section>
@endsection