@extends('layouts.client.app-layout-client')
@section('content')
    <style>
        .parallax {
            background-image: linear-gradient(rgba(65, 35, 1, 0.2),rgba(8, 2, 0, 0.3)), url("../../assets/img/parallax_dashboard.jpg");
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
                    <h1 class="display-3 text-center mt-5 fw-bold">Mis Compras</h1>
                </div>
            </div>
            <div class="row"><div class="col"><hr class="text-dark" /></div></div>
            <div class="row justify-content-center ps-4 pe-4">
                @if(empty($invoices))
                    <div class="col-12 mt-3 mb-3">
                        <div class="card">
                            <div class="card-body text-center">
                                <p>Aun no has realizados compras en línea, por favor seleccione sus productos para que pueda realizar sus compras.</p>
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
                                    <th class="bg-dark bg-gradient text-light text-center pt-3 pb-3">Número</th>
                                    <th class="bg-dark bg-gradient text-light text-center pt-3 pb-3">Tipo Comprobante</th>
                                    <th class="bg-dark bg-gradient text-light text-center pt-3 pb-3">Tipo</th>
                                    <th class="bg-dark bg-gradient text-light text-center pt-3 pb-3">I.G.V.</th>
                                    <th class="bg-dark bg-gradient text-light text-center pt-3 pb-3">Fecha Emisión</th>
                                    <th class="bg-dark bg-gradient text-light text-center pt-3 pb-3">Fecha Vencimiento</th>
                                    <th class="bg-dark bg-gradient text-light text-center pt-3 pb-3">Estado</th>
                                    <th class="bg-dark bg-gradient text-light text-center pt-3 pb-3">Fecha Creación</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach($invoices as $item)
                                    <tr class="align-middle">
                                        <td width="40"><a href="/invoice/{{ $item->id }}" target="_blank" class="btn btn-danger"><i class="fas fa-file-pdf"></i></a></td>
                                        <td class="text-center">{{ $item->id }}</td>
                                        <td class="text-center">
                                            @if($item->type === 'F')
                                                Factura
                                            @else
                                                Boleta
                                            @endif
                                        </td>
                                        <td class="text-center">
                                            @if($item->ind_action === 'B')
                                                Bien
                                            @else
                                                Servicio
                                            @endif
                                        </td>
                                        <td class="text-center">{{ number_format($item->tax,2) }}</td>
                                        <td class="text-center">{{ $item->issued_at }}</td>
                                        <td class="text-center">{{ $item->expired_at }}</td>
                                        <td class="text-center">
                                            @if($item->ind_status === 1) 
                                                Activo
                                            @else
                                                Inactivo
                                            @endif
                                        </td>
                                        <td class="text-center">{{ $item->created_at }}</td>
                                    </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                @endif
            </div>
        </article>
    </section>
@endsection
@section('scripts')

@endsection