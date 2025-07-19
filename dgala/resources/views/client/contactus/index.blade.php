@extends('layouts.client.app-layout-website')
@section('content')
    <style>
        .parallax {
            background-image: linear-gradient(rgba(0, 0, 0, 0.527),rgba(0, 0, 0, 0.8)), url("../../assets/img/parallax_contactus.jpg");
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
                    <h1 class="display-3 text-center mt-5 text-light fw-bold">Contáctenos</h1>
                </div>
            </div>
            <div class="row">
                <div class="col">
                    <p class="fs-5 mt-4 p-4 text-light" align="justify">
                        Envíanos un mensaje por medio del formulario a continuación o enviándonos un correo electrónico 
                        a informes@dgala.com.pe
                    </p>
                </div>
            </div>
            <div class="row"><div class="col"><hr class="text-light" /></div></div>
            <div class="row row-cols-1 row-cols-md-3 g-6 p-4">
                <div class="col col-md-12 p-4">
                    <form action="/contacts" method="POST" class="needs-validation" novalidate>
                        @csrf
                        <div class="mb-3">
                            <label class="form-label text-light">Nombres</label>
                            <input type="text" class="form-control" id="name" name="name" required />
                            <div class="invalid-feedback fw-bold">Por favor especifique sus Nombres.</div>
                        </div>
                        <div class="mb-3">
                            <label class="form-label text-light">Apellidos</label>
                            <input type="text" class="form-control" id="last_name" name="last_name" required />
                            <div class="invalid-feedback fw-bold">Por favor especifique sus Apellidos.</div>
                        </div>
                        <div class="mb-3">
                            <label class="form-label text-light">Correo Electrónico</label>
                            <input type="email" class="form-control" id="email" name="email" required />
                            <div class="invalid-feedback fw-bold">Por favor especifique su Correo Electrónico.</div>
                        </div>
                        <div class="mb-3">
                            <label class="form-label text-light">Teléfono</label>
                            <input type="number" class="form-control" id="phone_number" name="phone_number" required />
                            <div class="invalid-feedback fw-bold">Por favor especifique su Número de Teléfono.</div>
                        </div>
                        <div class="mb-3">
                            <label class="form-label text-light">Mensaje</label>
                            <textarea class="form-control" id="message" name="message" rows="4" required></textarea>
                            <div class="invalid-feedback fw-bold">Por favor especifique su Mensaje.</div>
                        </div>
                        <div class="mb-3 pt-4">
                            <button type="submit" class="btn btn-warning bg-gradient w-100 text-danger fw-bold p-3"><i class="fas fa-envelope me-2"></i>Enviar Mensaje</button>
                        </div>
                    </form>
                </div>
            </div>
        </article>
    </section>
    <script>
        (() => {
            'use strict'
            const forms = document.querySelectorAll('.needs-validation')
            Array.from(forms).forEach(form => {
                form.addEventListener('submit', event => {
                    if (!form.checkValidity()) {
                        event.preventDefault()
                        event.stopPropagation()
                    }
                    form.classList.add('was-validated')
                }, false)
            })
        })()
    </script>
@endsection