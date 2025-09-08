@extends('layouts.admin.app-layout-admin')
@section('role', session('role_name'))
@section('title', 'Ventas')
@section('content')
<div class="row">
    <div class="col-lg-12">
        <div class="card">
            <div class="card-body">
                <div class="table-responsive">
                    @if (count($invoices) == 0)
                        <div class="text-center p-4">
                            <h3 class="text-black">No se han encontrado datos</h3>
                            <p>Por favor, espere a que los clientes realicen sus compras.</p>
                        </div>
                    @else
                        <table class="table table-hover table-responsive-sm">
                            <thead class="thead-info">
                                <tr>
                                    <th></th>
                                    <th>Número</th>
                                    <th>Tipo Comprobante</th>
                                    <th>Tipo</th>
                                    <th>Nº Identidad</th>
                                    <th>Cliente</th>
                                    <th>I.G.V.</th>
                                    <th>Fecha Emisión</th>
                                    <th>Fecha Vencimiento</th>
                                    <th>Estado</th>
                                    <th>Fecha Creación</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($invoices as $item)
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
                                        <td class="text-center">{{ $item->document_type_initials }}: {{ $item->customer_document_number }}</td>
                                        <td class="text-center">{{ $item->customer_first_name }} {{ $item->customer_middle_name }} {{ $item->customer_last_name }}</td>
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
                    @endif
                </div>
                <div class="d-flex custom-pagination justify-content-center">
                    {{ $invoices->appends(request()->query())->links('vendor.pagination.bootstrap-5') }}
                </div>
            </div>
        </div>
    </div>
</div>
@endsection