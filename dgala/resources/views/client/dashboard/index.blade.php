@extends('layouts.client.app-layout-client')
@section('content')
<style>
        .parallax {
            background-image: linear-gradient(rgba(255, 255, 255, 0),rgba(255, 255, 255, 0)), url("../../assets/img/parallax_dashboard.jpg");
            min-height: 500px;
            background-attachment: fixed;
            background-position: center;
            background-repeat: no-repeat;
            background-size: cover;
        }
        .zoom { transition: transform .5s; }
        .zoom:hover { transform: scale(1.5); }
    </style>
    <section class="parallax">
        <article>
            <div class="row">
                <div class="col">
                    <h1 class="display-4 text-center mt-5 text-dark fw-bold">Hola, {{ session('customer_first_name') }}</h1>
                </div>
            </div>
            <div class="row">
                <div class="col">
                    <p class="fs-4 mt-4 p-4 text-dark" align="justify">
                        Bienvenidos a la plataforma de cliente, en este sistema podrás visualizar tus compras realizadas, configurar tu cuenta de usuarios y monitorear el estado de los envíos de los productos comprados.<br />
                    </p>
                </div>
            </div>
        </article>
    </section>
@endsection