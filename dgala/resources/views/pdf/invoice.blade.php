<!DOCTYPE html>
    <html lang="en">
    <head>
        <style>
            body { margin: 0; padding: 0; }
            .header-title { font-size: 20px; font-weight: bold; margin-bottom: 16px; }
            .header-center { font-size: 12px; }
            .div-invoice { border-style: solid; border-width: 1px; border-color: #000000; text-align: center; vertical-align: middle; }
            .title-invoice { padding-top: 8px; padding-bottom: 8px; }
            .client-invoice { border-style: solid; border-width: 1px; border-color: #000000; padding: 8px; }
            .total-invoice { width: 100%; }
        </style>
    </head>
    <body>
        <table border="0" width="100%">
            <tr>
                <td style="width:116px;"><img src="assets/resources/logo.png" style="width:100px;" /></td>
                <td style="width:320px;">
                    <div>
                        <div class="header-title">{{ $company->name }}</div>
                        <div class="header-center">{{ $company->trade_name }}</div>
                        <div class="header-center">{{ $company->address }}</div>
                        <div class="header-center">{{ $company->phone_number }} | {{ $company->email }}</div>
                    </div>
                </td>
                <td>
                    <div class="div-invoice">
                        <div class="title-invoice"><b>RUC: {{ $company->id }}</b></div>
                        <div class="title-invoice"><b>Factura Electrónica</b></div>
                        <div class="title-invoice"><b>Nª: {{ $num }}</b></div>
                    </div>
                </td>
            </tr>
        </table>
        <br />
        <div class="client-invoice">
            <table border="0" width="100%">
                <tr>
                    <td>
                        <div class="title-client"><b>Cliente:</b> {{ $customer->first_name }} {{ $customer->middle_name }} {{ $customer->last_name }}</div>
                        <div class="title-client"><b>Dirección:</b> {{ $customer->address }}</div>
                        <div class="title-client"><b>Tipo Documento:</b> {{ $documentType->initials }}</div>
                        <div class="title-client"><b>Nº Documento:</b> {{ $customer->document_number }}</div>
                        <div class="title-client"><b>Fecha Emisión:</b> {{ $invoice->issued_at }}</div>
                        <div class="title-client"><b>Fecha Vencimiento:</b> {{ $invoice->expired_at }}</div>
                    </td>
                    <td align="right">
                        <img src="data:image/png;base64, {{ base64_encode($qrCodeImg) }}"/>
                    </td>
                </tr>
            </table>
        </div>
        <br />
        <table border="1" cellspacing="0" width="100%">
            <thead>
                <tr>
                    <th>Código</th>
                    <th>Descripción</th>
                    <th>Precio</th>
                    <th>Cantidad</th>
                    <th>Importe</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($invoiceDetails as $item)
                    <tr>
                        <td align="center">{{ $item->id }}</td>
                        <td>{{ $item->name }}</td>
                        <td align="right">S/. {{ number_format($item->price, 2) }}</td>
                        <td align="center">{{ $item->quantity }}</td>
                        <td align="right">S/. {{ number_format($item->amount, 2) }}</td>
                    </tr>
                @endforeach
            </tbody>
        </table>
        <br />
        <div class="total-invoice">
            <table border="1" cellspacing="0" align="right">
                <tr>
                    <th align="left" width="160">Importe Venta: </th>
                    <td align="right" width="160">S/ {{ number_format($amountSales, 2) }}</td>
                </tr>
                <tr>
                    <th align="left">I.G.V.(18.00 %): </th>
                    <td align="right">S/ {{ number_format($amountTax, 2) }}</td>
                </tr>
                <tr>
                    <th align="left">Importe Total: </th>
                    <td align="right">S/ {{ number_format($amountTotal, 2) }}</td>
                </tr>
            </table>
        </div>
        <br />
        <hr />
        <b>Nota:</b> Para realizar el seguimiento de sus envíos, ingrese a nuestro sitio web o al contact 
        center y mediante el número de Tracking consulte el estado de su envío.
        <hr />
        <b>Nº de Tracking: </b>{{ $deliveryTrack->id }}<br />
        <b>Origen: </b>{{ $company->address }}<br />
        <b>Destino: </b>{{ $customer->address }}<br />
        <br /><br />
        <center><img src="data:image/png;base64, {{ base64_encode($qrCodeImgTrack) }}"/></center>
    </body>
</html>