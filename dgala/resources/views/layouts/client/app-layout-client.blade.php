<!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="shortcut icon" href="../../assets/img/favicon.svg" />
        <link rel="stylesheet" href="../../assets/lib/bootstrap/css/bootstrap.min.css" />
        <link rel="stylesheet" href="../../assets/lib/fontawesome/css/all.css" />
        <link rel="stylesheet" type="text/css" href="../../assets/lib/twentytwenty/css/twentytwenty.css">
        <link rel="stylesheet" type="text/css" href="../../assets/lib/rangeSlider/css/rSlider.min.css">
        <title>D'Gala</title>
        <style>
            body { margin: 0; padding: 0; overflow-x: hidden; }
            .parallax {
                background-image: url("../../assets/img/parallax_dgala.jpg");
                min-height: 500px;
                background-attachment: fixed;
                background-position: center;
                background-repeat: no-repeat;
                background-size: cover;
            }
            .card-gradient-item { background-image: linear-gradient( 135deg, #ffaf03 20%, #2e0505 100%); }
            .zoom { transition: transform .5s; }
            .zoom:hover { transform: scale(1.5); }
            .room-content { background-color: rgba(20, 20, 20, 0.9); padding:0px 40px; }
            .room-content h3{ color: #FAB702; font-size: 17px; font-weight:400; letter-spacing: 3px; text-transform: uppercase; }
            .room-content p{ margin: 0 0 10px; font-size:13px; font-weight: 400; color: #ddd; letter-spacing: 1px; line-height: 1.8em; }
            .dgala-prod { color:#4d2e00; }
            .section-bg-01 { background-color: rgba(20, 20, 20, 1); }
        </style>
    </head>
    <body>
        <header>
            <div class="container-fluid bg-black">
                <div class="row">
                    <div class="col p-4">
                        <img src="../../assets/img/favicon.svg" />
                    </div>
                    <div class="col"></div>
                    <div class="col-auto">
                        <div class="row">
                            <div class="col">
                                <div class="hstack mt-4 me-4 mb-2">
                                    <div class="p-1 text-light">
                                        <a href="/" class="btn link-underline-dark text-light"><i class="fas fa-house me-2"></i>Ir a D'GALA</a>
                                    </div>
                                    <div class="p-1 text-light">|</div>
                                    <div class="p-1 text-light ms-3 me-3"><a href="/carts" class="link-underline-dark text-light"><i class="fas fa-cart-shopping me-2"></i>Carrito</a></div>
                                    <div class="p-1 text-light">|</div>
                                    <div class="p-1 text-light">
                                        <button type="button" class="btn link-underline-dark text-light"><i class="fas fa-user-large me-2"></i>{{ session('customer_email') }}</button>
                                    </div>
                                    <div class="p-1 text-light">|</div>
                                    <div class="p-1 text-light">
                                        <form action="/client/logout" method="POST">
                                            @csrf
                                            <button type="submit" class="btn link-underline-dark text-light"><i class="fas fa-power-off me-2"></i>Cerrar sesión</button>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </header>
        <nav class="navbar navbar-expand-lg bg-dark">
            <div class="container-fluid">
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <i class="fas fa-bars text-light"></i>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <div class="d-flex justify-content-center w-100">
                        <div class="mb-lg-0">
                            <ul class="navbar-nav">
                                <li class="nav-item fw-bold me-5 align-self-center"><a class="text-light nav-link active" href="{{ route('client.dashboard') }}" aria-current="page">Inicio</a></li>
                                <li class="nav-item fw-bold me-5 align-self-center"><a class="text-light nav-link" href="{{ route('client.account') }}">Cuenta</a></li>
                                <li class="nav-item fw-bold me-5 align-self-center"><a class="text-light nav-link" href="{{ route('client.invoice') }}">Compras</a></li>
                                <li class="nav-item fw-bold me-5 align-self-center"><a class="text-light nav-link" href="{{ route('client.tracking') }}">Seguimiento</a></li>
                                <!--<li class="nav-item fw-bold me-5 align-self-center"><a class="text-light nav-link " href="#">Servicios</a></li>-->
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </nav>
        <main>
            @yield('content')
            <!--<section class="bg-black">
                <article>
                    <div class="row p-5">
                        <div class="col-12 col-md-5">
                            <div class="row mb-4">
                                <div class="col"><img src="../../assets/img/favicon.svg" height="80" /></div>
                            </div>
                            <div class="row mb-4">
                                <div class="col">
                                    <p align="justify" class="fs-6 text-light">
                                        Calidad asegurada de nuestras joyas son 100% fabricadas en Peru. Las gemas y diamantes cuentan con 
                                        certificaciones internacionales que garantizan su auntenticidad. Adicionalmente la pureza de nuestro 
                                        oro se valida con un reporte de análisis XRF
                                    </p>
                                </div>
                            </div>
                            <div class="row mb-5">
                                <div class="col">
                                    <div class="hstack gap-3">
                                        <div class="p-1"><span class="text-light">Siguenos en:</span></div>
                                        <div class="p-1"><i class="fs-2 fab fa-facebook text-light"></i></div>
                                        <div class="p-1"><i class="fs-2 fab fa-instagram text-light"></i></div>
                                        <div class="p-1"><i class="fs-2 fab fa-twitter text-light"></i></div>
                                        <div class="p-1"><i class="fs-2 fab fa-whatsapp text-light"></i></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-12 col-md-6 offset-md-1">
                            <div class="row">
                                <div class="col">
                                    <div class="mb-3"><h4 class="fs-5 text-light">Nosotros</h4></div>
                                    <div class="mb-3"><a href="#" class="text-light link-underline-dark">Historia</a></div>
                                    <div class="mb-3"><a href="#" class="text-light link-underline-dark">Nuestro Equipo</a></div>
                                    <div class="mb-3"><a href="#" class="text-light link-underline-dark">Guía de Marca</a></div>
                                    <div class="mb-3"><a href="#" class="text-light link-underline-dark">Términos y Condiciones</a></div>
                                    <div class="mb-3"><a href="#" class="text-light link-underline-dark">Política de Privacidad</a></div>
                                </div>
                                <div class="col">
                                    <div class="mb-3"><h4 class="fs-5 text-light">Servicios</h4></div>
                                    <div class="mb-3"><a href="#" class="text-light link-underline-dark">Cómo Ordenar</a></div>
                                    <div class="mb-3"><a href="#" class="text-light link-underline-dark">Nuestros Productos</a></div>
                                    <div class="mb-3"><a href="#" class="text-light link-underline-dark">Nuestros Servicios</a></div>
                                    <div class="mb-3"><a href="#" class="text-light link-underline-dark">Promociones</a></div>
                                    <div class="mb-3"><a href="#" class="text-light link-underline-dark">Métodos de Pago</a></div>
                                </div>
                                <div class="col">
                                    <div class="mb-3"><h4 class="fs-5 text-light">Otros</h4></div>
                                    <div class="mb-3"><a href="#" class="text-light link-underline-dark">Contáctenos</a></div>
                                    <div class="mb-3"><a href="#" class="text-light link-underline-dark">Ayuda</a></div>
                                    <div class="mb-3"><a href="#" class="text-light link-underline-dark">Privacidad</a></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </article>
            </section>-->
        </main>
        <footer>
            <div class="row">
                <div class="col p-4 bg-black text-light text-center fs-6">
                    Desarrollado por D'Gala Team Soft &copy; 2025, todos los derechos reservados
                </div>
            </div>
        </footer>
    </body>
</html>
<script src="../../assets/lib/jquery/jquery-3.6.0.min.js"></script>
<script src="../../assets/lib/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="../../assets/lib/twentytwenty/js/jquery.event.move.js"></script>
<script src="../../assets/lib/twentytwenty/js/jquery.twentytwenty.js"></script>
<script src="../../assets/lib/rangeSlider/js/rSlider.min.js"></script>
<script type="text/javascript">
    $(document).ready(function(){
        $("#before-after,#before-after2").twentytwenty();
    });
</script>
@yield('scripts')