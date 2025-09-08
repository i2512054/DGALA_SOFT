<!-- INIT: MODAL MSG -->
<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#message" style="display:none;" id="btAlertMessage"></button>
<div class="modal fade" id="message" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="messageLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="messageLabel">Carrito de Compras</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col"><p id="pModalMessage">...</p></div>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <a href="/register" class="btn btn-dark me-3" data-bs-target="" data-bs-dismiss="" data-bs-toggle="">Registrarse</a>
                <a href="/client/signin" class="btn btn-secondary me-3" data-bs-target="" data-bs-dismiss="" data-bs-toggle="">Iniciar Sesión</a>
                <button type="button" class="btn btn-danger" data-bs-target="" data-bs-dismiss="" data-bs-toggle="modal">Salir</button>
            </div>
        </div>
    </div>
</div>
<!-- END: MODAL MSG -->