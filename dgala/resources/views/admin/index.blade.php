<!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="../../assets/lib/fontawesome/css/all.css" />
        <link rel="stylesheet" href="../../assets/lib/bootstrap/css/bootstrap.min.css" />
        <script src="../../assets/lib/jquery/jquery-3.6.0.min.js"></script>
        <script src="../../assets/lib/bootstrap/js/bootstrap.bundle.min.js"></script>
        <link rel="shortcut icon" href="assets/favicon.svg" />
        <title>DGALA: Administrador</title>
        <style>
            body { background-color: #000000ea; }
            input::placeholder { color: rgb(168, 168, 168) !important; }
            .div-login-p2 { border-bottom-right-radius: 8px; border-top-right-radius: 8px; background-image: url(../../assets/resources/fnd-admin-login.svg); background-size: cover; background-repeat: no-repeat; }
            .button-title-login { background-color: #AA8447; }
            .div-border-radius-4 { border-radius: 4px; }
            .div-content-radius-all { border-bottom-left-radius: 8px; border-top-left-radius: 8px; }
        </style>
    </head>
    <body>
        <input type="hidden" id="hid-msg" value="{{ $message }}" />
        <!-- INIT: MODAL MSG -->
        <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#message" style="display:none;" id="btAlertMessage"></button>
        <div class="modal fade" id="message" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="messageLabel" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="messageLabel">DGALA: Login</h5>
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
                        <button id="bt-show-message-success" type="button" class="btn btn-secondary" data-bs-target="" data-bs-dismiss="" data-bs-toggle="modal" onclick="onStartLogin();">Aceptar</button>
                    </div>
                </div>
            </div>
        </div>
        <!-- END: MODAL MSG -->
        <main>
            <section class="mt-3">
                <div class="container">
                    <div class="card border border-0">
                        <div class="row g-0">
                            <div class="card-body col-12 col-md-6 m-0 p-0">
                                <div class="row bg-black div-content-radius-all">
                                    <div class="col-6 p-5">
                                        <div class="row">
                                            <div class="col text-center">
                                                <img src="../../assets/resources/favicon.svg" />
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-12 text-center">
                                                <div class="mb-4 mt-2 text-light"><h3>Plataforma Administrador</h3></div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <form id="frm" action="account/login" method="POST">
                                                @csrf
                                                <div class="row gy-3 gy-md-4 overflow-hidden ps-4 pe-4">
                                                    <div class="col-12">
                                                        <div class="input-group border p-1 div-border-radius-4 div-border-radius-4">
                                                            <button tabindex="-1" class="btn btn-black border-0 text-light" type="button"><i class="fas fa-user"></i></button>
                                                            <input type="text" class="form-control bg-black border-0 text-light" placeholder="Usuario" id="email" name="email" />
                                                        </div>
                                                    </div>
                                                    <div class="col-12 mb-3">
                                                        <div class="input-group border p-1 div-border-radius-4">
                                                            <button tabindex="-1" class="btn btn-black border-0 text-light" type="button"><i class="fas fa-key"></i></button>
                                                            <input type="password" class="form-control bg-black border-0 text-light" placeholder="Contraseña" id="access" name="access" />
                                                            <button tabindex="-1" class="btn btn-black border-0 text-light" type="button"><i class="fas fa-eye"></i></button>
                                                        </div>
                                                    </div>
                                                    <div class="col-12">
                                                        <div class="d-grid">
                                                            <button class="btn text-light button-title-login" type="submit"><b>Iniciar Sesión</b></button>
                                                        </div>
                                                    </div>
                                                    <div class="col-12 text-center">
                                                        <p><a href="#" class="link-underline-dark text-light">¿Has olvidado tu contraseña?</a></p>
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                    <div class="col-6 bg-dark div-login-p2"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </main>
    </body>
</html>
<script>
    function onShowMessage(message, idModal) {
        $('#pModalMessage').html(message);
        $('#btAlertMessage').click();
        $('#bt-show-message-success').attr("data-bs-target", idModal);
    }
    function onStartLogin() {
        window.location.href = "/";
    }
    $(document).ready(async function() {
        let msg = $('#hid-msg').val();
        if(msg != '') { onShowMessage(msg, ""); }
    });
</script>