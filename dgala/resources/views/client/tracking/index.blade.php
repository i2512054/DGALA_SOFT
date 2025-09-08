@extends('layouts.client.app-layout-client')
@section('content')
    <style>
        .parallax {
            background-image: linear-gradient(rgba(65, 35, 1, 0.1),rgba(8, 2, 0, 0.2)), url("../../assets/img/parallax_dashboard.jpg");
            min-height: 500px;
            background-attachment: fixed;
            background-position: center;
            background-repeat: no-repeat;
            background-size: cover;
        }
        .zoom { transition: transform .5s; }
        .zoom:hover { transform: scale(1.5); }
    </style>
    @include('partials.modal')
    <section class="parallax">
        <article>
            <div class="row">
                <div class="col">
                    <h1 class="display-3 text-center mt-5 fw-bold">Seguimiento de Envíos</h1>
                </div>
            </div>
            <div class="row"><div class="col"><hr class="text-dark" /></div></div>
            <div class="row g-6 p-4">
                <div class="col-12 col-md-12">
                    <div class="input-group">
                        <input type="text" id="txt-num" class="form-control" placeholder="Ingrese Número de Tracking" aria-describedby="button-addon2">
                        <button class="btn btn-lg btn-dark" type="button" id="button-addon2" onclick="loadTrack();">Consultar seguimiento de envío</button>
                    </div>
                </div>
            </div>
            <!--<div class="row"><div class="col"><hr class="text-dark" /></div></div>-->
            <div class="row g-6 p-4 mt-4" id="div-track-detail" style="display:none;">
                <div class="col-12 col-md-12"><h1 class="display-5 text-center fw-bold">Datos Generales</h1></div>
                <div class="col-12 col-md-12"><hr class="text-dark" /></div>
                <div class="col-12 col-md-3">
                    <div class="mb-3">
                        <label class="form-label">Número de Tracking</label>
                        <input type="text" class="form-control" id="txt-num-tracking" readonly />
                    </div>
                </div>
                <div class="col-12 col-md-3">
                    <div class="mb-3">
                        <label class="form-label">Número de Factura</label>
                        <input type="text" class="form-control" id="txt-num-invoice" readonly />
                    </div>
                </div>
                <div class="col-12 col-md-3">
                    <div class="mb-3">
                        <label class="form-label">Fecha Emisión</label>
                        <input type="text" class="form-control" id="txt-issued-at" readonly />
                    </div>
                </div>
                <div class="col-12 col-md-3">
                    <div class="mb-3">
                        <label class="form-label">Fecha Vencimiento</label>
                        <input type="text" class="form-control" id="txt-expired-at" readonly />
                    </div>
                </div>
                <div class="col-12 col-md-12"><hr class="text-dark" /></div>
                <div class="col-12 col-md-12"><h1 class="display-5 text-center fw-bold">Origen</h1></div>
                <div class="col-12 col-md-12"><hr class="text-dark" /></div>
                <div class="col-12 col-md-4">
                    <div class="mb-3">
                        <label class="form-label">Departamento</label>
                        <input type="text" class="form-control" id="txt-department-s" readonly />
                    </div>
                </div>
                <div class="col-12 col-md-4">
                    <div class="mb-3">
                        <label class="form-label">Provincia</label>
                        <input type="text" class="form-control" id="txt-province-s" readonly />
                    </div>
                </div>
                <div class="col-12 col-md-4">
                    <div class="mb-3">
                        <label class="form-label">Distrito</label>
                        <input type="text" class="form-control" id="txt-district-s" readonly />
                    </div>
                </div>
                <div class="col-12 col-md-12">
                    <div class="mb-3">
                        <label class="form-label">Dirección</label>
                        <input type="text" class="form-control" id="txt-address-s" readonly />
                    </div>
                </div>
                <div class="col-12 col-md-12"><hr class="text-dark" /></div>
                <div class="col-12 col-md-12"><h1 class="display-5 text-center fw-bold">Destino</h1></div>
                <div class="col-12 col-md-12"><hr class="text-dark" /></div>
                <div class="col-12 col-md-4">
                    <div class="mb-3">
                        <label class="form-label">Departamento</label>
                        <input type="text" class="form-control" id="txt-department-e" readonly />
                    </div>
                </div>
                <div class="col-12 col-md-4">
                    <div class="mb-3">
                        <label class="form-label">Provincia</label>
                        <input type="text" class="form-control" id="txt-province-e" readonly />
                    </div>
                </div>
                <div class="col-12 col-md-4">
                    <div class="mb-3">
                        <label class="form-label">Distrito</label>
                        <input type="text" class="form-control" id="txt-district-e" readonly />
                    </div>
                </div>
                <div class="col-12 col-md-12">
                    <div class="mb-3">
                        <label class="form-label">Dirección</label>
                        <input type="text" class="form-control" id="txt-address-e" readonly />
                    </div>
                </div>
                <div class="col-12 col-md-12"><hr class="text-dark" /></div>
                <div class="col-12 col-md-12"><h1 class="display-5 text-center fw-bold">Movimientos</h1></div>
                <div class="col-12 col-md-12"><hr class="text-dark" /></div>
            </div>
            <div class="row justify-content-center ps-4 pe-4" id="div-delivery-movement" style="display:none;">
                <div class="col-12">
                    <div class="table-responsive">
                        <table class="table table-bordered w-100">
                            <thead>
                                <tr>
                                    <th class="bg-dark bg-gradient"></th>
                                    <th class="bg-dark bg-gradient text-light text-center pt-3 pb-3">Estado</th>
                                    <th class="bg-dark bg-gradient text-light text-center pt-3 pb-3">Descripción</th>
                                    <th class="bg-dark bg-gradient text-light text-center pt-3 pb-3">Fecha</th>
                                </tr>
                            </thead>
                            <tbody id="tb-delivery-movement"></tbody>
                        </table>
                        <br /><br /><br /><br />
                    </div>
                </div>
            </div>
        </article>
    </section>
@endsection
@section('scripts')
    <script>
        let result = null;
        function onShowMessage(title, message, idModal) {
            $('#messageLabel').html(title);
            $('#pModalMessage').html(message);
            $('#btAlertMessage').click();
            $('#bt-show-message-success').attr("data-bs-target", idModal);
        }
        async function loadTrack() {
            let num = $('#txt-num').val();
            $('#div-track-detail, #div-delivery-movement').hide();
            const response = await fetch('/invoiceTracks/detail/' + num, {
                method: "GET"
            });
            console.clear();
            if(response.status === 200) {
                let json = await response.json();
                result = json;
                $('#txt-num-tracking').val(json.deliveryTrack.id);
                $('#txt-num-invoice').val(json.invoice.id);
                $('#txt-issued-at').val(json.invoice.issued_at);
                $('#txt-expired-at').val(json.invoice.expired_at);
                $('#txt-department-s').val(json.ubigeoStarted.department);
                $('#txt-province-s').val(json.ubigeoStarted.province);
                $('#txt-district-s').val(json.ubigeoStarted.district);
                $('#txt-address-s').val(json.company.address);
                $('#txt-department-e').val(json.ubigeoEnded.department);
                $('#txt-province-e').val(json.ubigeoEnded.province);
                $('#txt-district-e').val(json.ubigeoEnded.district);
                $('#txt-address-e').val(json.customer.address);
                $('#tb-delivery-movement').html("");
                for(let i = 0; i < json.deliveryMovements.length; i++) {
                    let sHTML = "";
                    sHTML += "<tr class='align-middle'>";
                    sHTML += "    <td width='40'><a href='#' target='_blank' class='btn btn-dark'><i class='fas fa-file-invoice'></i></a></td>";
                    sHTML += "    <td class='text-center'>" + json.deliveryMovements[i].type + "</td>";
                    sHTML += "    <td class='text-center'>" + json.deliveryMovements[i].remarks + "</td>";
                    sHTML += "    <td class='text-center'>" + json.deliveryMovements[i].created_at + "</td>";
                    sHTML += "</tr>";
                    $('#tb-delivery-movement').append(sHTML);
                }
                $('#div-track-detail, #div-delivery-movement').show();
            } else {
                onShowMessage("Seguimiento de Envíos", "El Número de Tracking '" + num + "', no existe en la base de datos, por favor vuelva a intentarlo.", "");
            }
        }
    </script>
@endsection