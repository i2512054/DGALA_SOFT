<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
	    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	    <meta name="keywords" content="">
	    <meta name="author" content="">
	    <meta name="robots" content="">
        <title>DGALA: Administrador</title>
	    <!-- FAVICONS ICON -->
	    <link rel="shortcut icon" type="image/png" href="../../assets/resources/favicon.svg">
	    <link href="../../assets/vendor/jquery-nice-select/css/nice-select.css" rel="stylesheet">
	    <link href="../../assets/vendor/owl-carousel/owl.carousel.css" rel="stylesheet">
	    <link rel="stylesheet" href="../../assets/vendor/nouislider/nouislider.min.css">
	    <!-- Style css -->
        <link href="../../assets/css/style.css" rel="stylesheet">
    </head>
    <body>
        <!-- INIT: Preloader start -->
        <div id="preloader"><div class="lds-ripple"><div></div><div></div></div></div>
        <!-- END: Preloader end -->
        
        <!-- INIT: Main wrapper start -->
        <div id="main-wrapper">
            <!-- INIT: Nav header start -->
            <div class="nav-header">
                <a href="/dashboard" class="brand-logo">
                    <img src="../../assets/resources/favicon.svg" width="55" height="55" class="logo-abbr" />
				    <div class="brand-title">
					    <h2 class="">D'GALA</h2>
					    <span class="brand-sub-title">@yield('role')</span>
				    </div>
                </a>
                <div class="nav-control">
                    <div class="hamburger">
                        <span class="line"></span><span class="line"></span><span class="line"></span>
                    </div>
                </div>
            </div>
            <!-- END: Nav header start -->
            
            <!-- INIT: Header start -->
            <div class="header border-bottom">
                <div class="header-content">
                    <nav class="navbar navbar-expand">
                        <div class="collapse navbar-collapse justify-content-between">
                            <div class="header-left"><div class="dashboard_bar">@yield('title')</div></div>
                        </div>
                        <ul class="navbar-nav header-right">
							<li class="nav-item dropdown  header-profile">
								<a class="nav-link" href="javascript:void(0);" role="button" data-bs-toggle="dropdown">
									<img src="../../assets/images/user.jpg" width="56" alt="">
								</a>
								<div class="dropdown-menu dropdown-menu-end">
									<a href="#" class="dropdown-item ai-icon">
										<svg id="icon-user1" xmlns="http://www.w3.org/2000/svg" class="text-primary" width="18" height="18" viewbox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"></path><circle cx="12" cy="7" r="4"></circle></svg>
										<span class="ms-2">Mi Cuenta</span>
									</a>
									<a href="#" onclick="onChangeThemeDGala('light');" class="dropdown-item ai-icon">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" fill="currentColor" class="bi bi-brightness-high-fill" viewBox="0 0 16 16"><path d="M12 8a4 4 0 1 1-8 0 4 4 0 0 1 8 0M8 0a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-1 0v-2A.5.5 0 0 1 8 0m0 13a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-1 0v-2A.5.5 0 0 1 8 13m8-5a.5.5 0 0 1-.5.5h-2a.5.5 0 0 1 0-1h2a.5.5 0 0 1 .5.5M3 8a.5.5 0 0 1-.5.5h-2a.5.5 0 0 1 0-1h2A.5.5 0 0 1 3 8m10.657-5.657a.5.5 0 0 1 0 .707l-1.414 1.415a.5.5 0 1 1-.707-.708l1.414-1.414a.5.5 0 0 1 .707 0m-9.193 9.193a.5.5 0 0 1 0 .707L3.05 13.657a.5.5 0 0 1-.707-.707l1.414-1.414a.5.5 0 0 1 .707 0m9.193 2.121a.5.5 0 0 1-.707 0l-1.414-1.414a.5.5 0 0 1 .707-.707l1.414 1.414a.5.5 0 0 1 0 .707M4.464 4.465a.5.5 0 0 1-.707 0L2.343 3.05a.5.5 0 1 1 .707-.707l1.414 1.414a.5.5 0 0 1 0 .708"/></svg>
										<span class="ms-2">Claro</span>
									</a>
									<a href="#" onclick="onChangeThemeDGala('dark');" class="dropdown-item ai-icon">										
                                        <svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" fill="currentColor" class="bi bi-moon-fill" viewBox="0 0 16 16"><path d="M6 .278a.77.77 0 0 1 .08.858 7.2 7.2 0 0 0-.878 3.46c0 4.021 3.278 7.277 7.318 7.277q.792-.001 1.533-.16a.79.79 0 0 1 .81.316.73.73 0 0 1-.031.893A8.35 8.35 0 0 1 8.344 16C3.734 16 0 12.286 0 7.71 0 4.266 2.114 1.312 5.124.06A.75.75 0 0 1 6 .278"/></svg>
										<span class="ms-2">Oscuro</span>
									</a>
									<a href="/" class="dropdown-item ai-icon">
										<svg id="icon-logout" xmlns="http://www.w3.org/2000/svg" class="text-danger" width="18" height="18" viewbox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M9 21H5a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h4"></path><polyline points="16 17 21 12 16 7"></polyline><line x1="21" y1="12" x2="9" y2="12"></line></svg>
										<span class="ms-2">Cerrar Sesión</span>
									</a>
								</div>
							</li>
                        </ul>
                    </nav>
                </div>
            </div>
            <!-- END: Header start -->

            <!-- INIT: Sidebar start -->
            <div class="dlabnav">
                <div class="dlabnav-scroll">
                    <ul class="metismenu" id="menu">
                        <li><a href="/dashboard" class="" aria-expanded="false"><i class="fas fa-grip-horizontal"></i><span class="nav-text">Dashboard</span></a></li>
                        <li><a href="/categories" class="" aria-expanded="false"><i class="fas fa-list"></i><span class="nav-text">Categorías</span></a></li>
                        <li><a href="/products" class="" aria-expanded="false"><i class="fas fa-building"></i><span class="nav-text">Productos</span></a></li>
                        <li><a href="/customers" class="" aria-expanded="false"><i class="fas fa-users"></i><span class="nav-text">Clientes</span></a></li>
                        <li><a href="/sales" class="" aria-expanded="false"><i class="fas fa-file-invoice-dollar"></i><span class="nav-text">Ventas</span></a></li>
                        <li><a href="/reports" class="" aria-expanded="false"><i class="fas fa-chart-line"></i><span class="nav-text">Reportes</span></a></li>
                        <li><a href="/accounts" class="" aria-expanded="false"><i class="fas fa-user"></i><span class="nav-text">Usuarios</span></a></li>
                        <li><a href="/tools" class="" aria-expanded="false"><i class="fas fa-server"></i><span class="nav-text">Configuración</span></a></li>
                    </ul>
                </div>
            </div>
            <!-- END: Sidebar start -->

            <!-- INIT: Content body start -->
            <div class="content-body">
                <div class="container-fluid">
                    <!-- INIT: COLOCAR EL CONTENIDO AQUI -->
                    @yield('content')
                    <!-- END: COLOCAR EL CONTENIDO AQUI -->
                </div>
            </div>
            <!-- END: Content body start -->

            <!-- INIT: Footer start -->
            <div class="footer">
                <div class="copyright"><p>Copyright © Designed &amp; Developed by <a href="#" target="_blank">D'GALA Group</a> 2024 - 2025</p></div>
            </div>
            <!-- END: Footer start -->
        </div>
        <!-- END: Main wrapper start -->
    </body>
</html>
<!-- Required vendors -->
<script src="../../assets/vendor/global/global.min.js"></script>
<script src="../../assets/vendor/chart.js/Chart.bundle.min.js"></script>
<script src="../../assets/vendor/jquery-nice-select/js/jquery.nice-select.min.js"></script>
<!-- Apex Chart -->
<script src="../../assets/vendor/apexchart/apexchart.js"></script>
<script src="../../assets/vendor/chart.js/Chart.bundle.min.js"></script>
<!-- Chart piety plugin files -->
<script src="../../assets/vendor/peity/jquery.peity.min.js"></script>
<!-- Dashboard 1 -->
<script src="../../assets/js/dashboard/dashboard-1.js"></script>
<script src="../../assets/vendor/owl-carousel/owl.carousel.js"></script>
<script src="../../assets/js/custom.min.js"></script>
<script src="../../assets/js/dlabnav-init.js"></script>
<script src="../../assets/js/demo.js"></script>
<script src="../../assets/js/styleSwitcher.js"></script>
<script>
    function cardsCenter() {
        jQuery('.card-slider').owlCarousel({
            loop:true,
            margin:0,
            nav:true,
            //center:true,
            slideSpeed: 3000,
            paginationSpeed: 3000,
            dots: true,
            navText: ['<i class="fas fa-arrow-left"></i>', '<i class="fas fa-arrow-right"></i>'],
            responsive:{ 0:{ items:1 }, 576:{ items:1 }, 800:{ items:1 }, 991:{ items:1 }, 1200:{ items:1 }, 1600:{ items:1 } }
        })
    }
    function onChangeThemeDGala(opt) {
        $('body').attr('data-theme-version', opt);
        setCookie('version', opt);
    }
    jQuery(window).on('load',function(){
        setTimeout(function(){ cardsCenter(); }, 1000); 
        //onChangeThemeDGala('dark');
    });
</script>