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
                <td style="width:116px;"><img src="assets/resources/favicon.svg" style="width:100px;" /></td>
                <td style="width:320px;">
                    <div>
                        <div class="header-title">Joyerías D'Gala</div>
                        <div class="header-center">Diseñamos y fabricamos joyas, fusionando arte y significado para tí.</div>
                        <div class="header-center">MZ. D LT. 12 ASOC. DE PRO LIMA - PUENTE PIEDRA</div>
                        <div class="header-center">(+51) 916 520 052 | oyeriaDGala@hotmail.com</div>
                    </div>
                </td>
                <td>
                    <div class="div-invoice">
                        <div class="title-invoice"><b>RUC: 20602087876</b></div>
                        <div class="title-invoice"><b>Factura Electrónica</b></div>
                        <div class="title-invoice"><b>Nª: 002-000010</b></div>
                    </div>
                </td>
            </tr>
        </table>
        <br />
        <div class="client-invoice">
            <table border="0" width="100%">
                <tr>
                    <td>
                        <div class="title-client"><b>Cliente:</b> José Hugo Saravia Chávez</div>
                        <div class="title-client"><b>Dirección:</b> Calle La Esparceta Nª 120 - Surco</div>
                        <div class="title-client"><b>Tipo Documento:</b> D.N.I.</div>
                        <div class="title-client"><b>Nº Documento:</b> 41406326</div>
                        <div class="title-client"><b>Fecha Emisión:</b> 08/08/2025</div>
                        <div class="title-client"><b>Fecha Vencimiento:</b> 23/08/2025</div>
                    </td>
                    <td align="right">
                        <img src="data:image/png;base64, {{  base64_encode($qrCodeImg) }}"/>
                    </td>
                </tr>
            </table>
        </div>
        <br />
        <table border="1" cellspacing="0" width="100%">
            <thead>
                <tr>
                    <th>Item</th>
                    <th>Descripción</th>
                    <th>Precio</th>
                    <th>Cantidad</th>
                    <th>Importe</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td align="center">1</td>
                    <td>CASCO</td>
                    <td align="right">S/. 189.90</td>
                    <td align="center">1</td>
                    <td align="right">S/. 189.90</td>
                </tr>
            </tbody>
        </table>
        <br />
        <div class="total-invoice">
            <table border="1" cellspacing="0" align="right">
                <tr>
                    <th align="left" width="160">Importe Venta: </th>
                    <td align="right" width="160">S/ 155.72</td>
                </tr>
                <tr>
                    <th align="left">I.G.V.(18.00 %): </th>
                    <td align="right">S/ 34.18</td>
                </tr>
                <tr>
                    <th align="left">Importe Total: </th>
                    <td align="right">S/ 189.90</td>
                </tr>
            </table>
        </div>
    </body>
</html>