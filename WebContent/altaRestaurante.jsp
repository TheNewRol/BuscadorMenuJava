<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Document</title>
    <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <!-- Materialize CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/css/materialize.min.css">
    <!-- Bootstrap 4 CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
    
    <link rel="stylesheet" href="css/alta.css">
    <link rel="stylesheet" href="css/main.css">
    
    
</head>

<body>

    <header>
        <nav class="nav-extended">
            <div class="nav-wrapper">
                <a href="#" class="brand-logo">Logo</a>
                <a href="#" data-activates="mobile-demo" class="button-collapse"><i class="material-icons">menu</i></a>
                <ul id="nav-mobile" class="right hide-on-med-and-down">
                    <li><a href="index.html">Inicio</a></li>
                    <li><a href="Registro.html">Acceso Restaurante</a></li>
                </ul>
                <ul class="side-nav" id="mobile-demo">
                    <li><a href="index.html">Inicio</a></li>
                    <li><a href="Registro.html">Acceso Restaurante</a></li>
                </ul>
            </div>
        </nav>
    </header>
    <div class="container-fluid">
        <div class="row">
            <h1 class="titulo">Alta de su restaurante</h1>
        </div>
        <div class="row">
            <form class="col-md-6 alta" action="servletAlta" method="post" id="alta">

                <div class="row">
                    <div class="col">
                        <div class="form-group">
                            <label><strong>Nombre</strong></label>
                            <input name="name" type="Nombre" class="form-control" id="exampleFormControlInput1" placeholder="Nombre">
                        </div>

                        <div class="form-group">
                            <label><strong>Tel&eacute;fono</strong></label>
                            <input name="tele" type="tel" class="form-control" id="exampleFormControlInput1" placeholder="Tel&eacute;fono">
                        </div>
                       <div class="form-group">
                            <label><strong>Provincia</strong></label>
                            <input name="prov" type="text" class="form-control" id="provincia" placeholder="Provincia">
                        </div>
                        <div class="form-group">
                            <label><strong>Poblaci&oacute;n</strong></label>
                            <input name="pobl" type="text" class="form-control" id="poblacion" placeholder="Poblaci&oacute;n">
                        </div>
                        <div class="row form-group">
                                <div class="col-sm-9">
                                    <label>Direccion</strong></label>
                                    <input name="dire" type="text" class="form-control" id="calle" placeholder="Ubicaci&oacute;n">
                                </div>
                                <div class="col-sm-3">
                                    <label><strong>NÂº</strong></label>
                                    <input name="numb" type="num" class="form-control" id="numero" placeholder="Ubicaci&oacute;n">
                                </div>
                                
                        </div>
                        <div id="mapMovil">
                            <div></div>
                        </div>
                        <div class="form-group">
                            <label for="exampleFormControlInput1"><strong>Correo</strong></label>
                            <input name="corr" type="email" class="form-control" id="exampleFormControlInput1" placeholder="Correo">
                        </div>
                          <div class="form-group">
                            <label for="exampleFormControlInput1"><strong>Contraseña</strong></label>
                            <input name="pass" type="password" class="form-control" id="contra" placeholder="Contraseña">
                            
                        </div>
                        <div class="form-group">
                            <label for="exampleFormControlInput1"><strong>Confirma t&uacute; contraseña</strong></label>
                            <input name="conf" type="password" class="form-control" id="confirmcontra" placeholder="Contraseña">
                        </div>
                        <div class="form-group">
                            <label for="exampleFormControlSelect1"><strong>Categor&iacute;a</strong></label>
                            <select name="cate" class="custom-select" id="exampleFormControlSelect1">
                                <option selected value="No tiene">No tiene</option>
                                <option value="tapas">Bar de tapas</option>
                                <option value="copas">Bar de copas</option>
                                <option value="restaurante">Restaurante</option>
                                <option value="cafeteria">Cafeter&iacute;a</option>
                                <option value="domicilio">Comida a domicilio</option>
                            </select>
                        </div>
                        <div class="redesSociales">
                            <div class="form-group">

                                <div class="row ">
                                    <div class="col-sm-3">
                                        <label class="form-check-label">
                                            <input name="social" class="form-check-input" type="checkbox" value="twitter">Twitter
                                        </label>
                                    </div>
                                    <div class="col-sm-9">
                                        <input name="socialURL" class="form-control" type="text" value="" placeholder="Añadir url de su red social">
                                    </div>
                                </div>
                                <div class="row ">
                                    <div class="col-sm-3">
                                        <label class="form-check-label">
                                            <input name="social" class="form-check-input" type="checkbox" value="facebook">Facebook
                                        </label>
                                    </div>
                                    <div class="col-sm-9">
                                        <input name="socialURL" class="form-control" type="text" value="" placeholder="Añadir url de su red social">
                                    </div>
                                </div>
                                <div class="row ">
                                    <div class="col-sm-3">
                                        <label class="form-check-label">
                                            <input name="social" class="form-check-input" type="checkbox" value="snapchat">Snapchat
                                        </label>
                                    </div>
                                    <div class="col-sm-9">
                                        <input name="socialURL"class="form-control" type="text" value="" placeholder="Añadir url de su red social">
                                    </div>
                                </div>
                                <div class="row ">
                                    <div class="col-sm-3">
                                        <label class="form-check-label">
                                            <input name="social" class="form-check-input" type="checkbox" value="youtube">Youtube
                                        </label>
                                    </div>
                                    <div class="col-sm-9">
                                        <input name="socialURL" class="form-control" type="text" value="" placeholder="Añadir url de su red social">
                                    </div>
                                </div>
                                <div class="row ">
                                    <div class="col-sm-3">
                                        <label class="form-check-label">
                                            <input name="social" class="form-check-input" type="checkbox" value="google">Google +
                                        </label>
                                    </div>
                                    <div class="col-sm-9">
                                        <input name="socialURL" class="form-control" type="text" value="" placeholder="Añadir url de su red social">
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="form-group">
                            <label for="exampleFormControlInput1"><strong>Imagen</strong></label>
                        </div>
                        <div class="form-group">
                            <label class="custom-file">
                                <input name="imag" type="file" id="file2" class="custom-file-input">
                                <span class="custom-file-control"></span>
                            </label>
                        </div>
                        <div class="form-group">
                            <label for="exampleFormControlInput1"><strong>Descripci&oacute;n</strong></label>
                            <div>
                                <textarea class="box-form col-sm-12" type="text" name="desc"></textarea>
                            </div>
                        </div>
                    </div>
                </div>
                <br>

                <div>
                    <button type="submit" class="btn btn-primary btn-enviar" )><strong>ENVIAR</strong></button>
                </div>
            </form>
            <div id="divmap" class="col-md-6">
                <div id="map"></div>
            </div>
        </div>
        <br>
        <br>


    </div>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <!-- https://www.html5rocks.com/es/tutorials/file/dndfiles/ -->
    <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/js/materialize.min.js"></script>
    <script src="https://maps.googleapis.com/maps/api/js?"></script>
    <script src="js/alta.js"></script>
</body>

</html>
