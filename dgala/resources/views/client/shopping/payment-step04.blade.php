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
    <section>
        <div class="container-fluid p-4">
            <div class="row">
                <div class="col">
                    <iframe src="/invoice/{{ $id }}" frameborder="0" class="w-100" height="700"></iframe>
                </div>
            </div>
            <div class="row">
                <div class="col">
                    <form action="" method="POST">
                        @csrf
                        <div class="row justify-content-center">
                            <div class="d-flex justify-content-between mt-4">
                                <a href="/invoice/{{ $id }}" target="_blank" class="btn btn-dark text-light"><i class="fab fa-sistrix me-2"></i>Visualizar Factura</a>
                                <a class="btn btn-dark bg-gradient text-white" href="/"><i class="fas fa-house me-2"></i><b>Ir a D'GALA</b></a>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>
@endsection