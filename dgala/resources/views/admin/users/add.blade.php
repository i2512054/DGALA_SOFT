@extends('layouts.app-layout-admin')
@section('role', session('role_name'))
@section('title', 'Crear Usuario')
@section('content')
<form action="/users" method="POST" enctype="multipart/form-data">
    @csrf
    <div class="row">
        <div class="col-lg-12">
            <div class="card">
                <div class="card-body">
                    <a href="/users" type="button" class="btn btn-danger bg-gradient me-4"><i class="fas fa-undo me-2"></i>Cancelar</a>
                    <button type="submit" class="btn btn-primary bg-gradient"><i class="fas fa-save me-2"></i>Guardar</button>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-12">
            <div class="card">
                <div class="card-body">
                    <div class="basic-form">
                        <form action="">
                            <div class="row">
                                <div class="mb-3 col-md-6">
                                    <label class="form-label">Rol</label>
                                    <select id="role_id" name="role_id" class="default-select form-control wide">
                                        <option selected="">Seleccione Rol ...</option>
                                        @foreach ($roles as $item)
                                            <option value="{{ $item->id }}">{{ $item->name }}</option>    
                                        @endforeach
                                    </select>
                                </div>
                                <div class="mb-3 col-md-6">
                                    <label class="form-label">Nombre</label>
                                    <input id="name" name="name" type="text" class="form-control" />
                                </div>
                            </div>
                            <div class="row">
                                <div class="mb-3 col-md-12">
                                    <label class="form-label">Correo Electrónico</label>
                                    <input id="email" name="email" type="email" class="form-control" />
                                </div>
                            </div>
                            <div class="row">
                                <div class="mb-3 col-md-4">
                                    <label class="form-label">Contraseña</label>
                                    <input id="password" name="password" type="password" class="form-control" />
                                </div>
                                <div class="mb-3 col-md-4">
                                    <label class="form-label">Repetir Contraseña</label>
                                    <input id="password_repeat" name="password_repeat" type="password" class="form-control" />
                                </div>
                                <div class="mb-3 col-md-4">
                                    <br />
                                    <button type="button" class="btn btn-primary bg-gradient" onclick="generatePassword();"><i class="fas fa-key me-3"></i>Generar Contraseña</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</form>
<script>
    var Password = {
        _pattern : /[a-zA-Z0-9_\-\+\.]/,
        _getRandomByte : function() {
            if(window.crypto && window.crypto.getRandomValues) {
                var result = new Uint8Array(1);
                window.crypto.getRandomValues(result);
                return result[0];
            } else if(window.msCrypto && window.msCrypto.getRandomValues) {
                var result = new Uint8Array(1);
                window.msCrypto.getRandomValues(result);
                return result[0];
            } else {
                return Math.floor(Math.random() * 256);
            }
        },
        generate : function(length) {
            return Array.apply(null, {'length': length}).map(function() {
                var result;
                while(true) {
                    result = String.fromCharCode(this._getRandomByte());
                    if(this._pattern.test(result)) { return result; }
                }
            }, this).join('');
        }
    };
    function generatePassword() {
        $('#password, #password_repeat').val(Password.generate(16));
    }
</script>
@endsection