<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <title>Restaurante</title>
    <!-- Compiled and minified CSS -->
    <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/css/materialize.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
    <link rel="stylesheet" href="css/index.css">
	<!-- Compiled and minified JS -->
    <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/js/materialize.min.js"></script>
    <script src="https://maps.googleapis.com/maps/api/js?"></script>
    
    <script src="js/index.js"></script>

</head>

<body>
    <header>
        <nav class="nav-extended">
            <div class="nav-wrapper">
                <a href="#" class="brand-logo">Logo</a>
                <a href="#" data-activates="mobile-demo" class="button-collapse"><i class="material-icons">menu</i></a>
                <ul id="nav-mobile" class="right hide-on-med-and-down">
                    <li><a href="sass.html">Inicio</a></li>
                    <li><a href="badges.html">Acceso Restaurante</a></li>
                </ul>
                <ul class="side-nav" id="mobile-demo">
                    <li><a href="sass.html">Inicio</a></li>
                    <li><a href="badges.html">Acceso Restaurante</a></li>
                </ul>
            </div>
        </nav>
    </header>
    <div class="container">
        <div class="container-fluid">
        	<form action="../servletAdmin" method="POST">
            <div class="row">
                <div class="col-md-12">
                    <div class="card">
                        <div class="carousel carousel-slider center" data-indicators="true">
                            <div class="carousel-fixed-item center">
                                <a class="btn waves-effect white grey-text darken-text-2">button</a>
                            </div>
                            <div class="carousel-item red white-text" href="#one!">
                                <h2>First Panel</h2>
                                <p class="white-text">This is your first panel</p>
                            </div>
                            <div class="carousel-item amber white-text" href="#two!">
                                <h2>Second Panel</h2>
                                <p class="white-text">This is your second panel</p>
                            </div>
                            <div class="carousel-item green white-text" href="#three!">
                                <h2>Third Panel</h2>
                                <p class="white-text">This is your third panel</p>
                            </div>
                            <div class="carousel-item blue white-text" href="#four!">
                                <h2>Fourth Panel</h2>
                                <p class="white-text">This is your fourth panel</p>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="custom-file">
                                <input type="file" id="file2" class="custom-file-input">
                                <span class="custom-file-control"></span>
                            </label>
                        </div>
                        <div class="card-content">
                            <h3 class="text-center"><input name="nombre" type="text" value="Nombre Restaurante"></h3>
                            <div class="row">
                                <div class="col-md-5 pull-left">
                                    <i class="fa fa-star" aria-hidden="true"></i>
                                    <i class="fa fa-star" aria-hidden="true"></i>
                                    <i class="fa fa-star" aria-hidden="true"></i>
                                    <i class="fa fa-star-half-o" aria-hidden="true"></i>
                                    <i class="fa fa-star-o" aria-hidden="true"></i>
                                </div>
                                <div class="col-md-5 pull-right">
                                    <p>Categoria: <span><input name="categoria" type="text" value="restaurante"></span></p>
                                </div> 
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                        <h1 class="text-center">Menus</h1>
                                    <div class="menus">
                                        <textarea name="menu" rows="10" cols="40">Escribe aquí tus comentarios</textarea>
                                    </div>
                                    <div class="card-action">
                                        <form action="http://maps.google.com/maps" get="" target="blank">
                                            <a class="col-sm-5 waves-effect waves-light btn modal-trigger" href="#modal1">Reserva</a>
                                            <input name="daddr" type="hidden" value="Ctra. Barcelona, 11, 08500 Vic, Barcelona, España">
                                            <input class="col-sm-5 waves-effect waves-light btn " type="submit" value="Como Llegar">
                                        </form>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div id="map" class="row"></div>
                                </div>
                            </div>
                            <div class="row">
                            	<div class = "col-sm-6">
                            		<div class="redesSociales">
			                            <div class="form-group">
			                                <div class="row ">
			                                    <div class="col-sm-3">
			                                        <label class="form-check-label">
			                                            <input class="form-check-input" type="checkbox" value="">Twitter
			                                        </label>
			                                    </div>
			                                    <div class="col-sm-9">
			                                        <input class="form-control" type="text" value="" placeholder="A�adir url de su red social">
			                                    </div>
			                                </div>
			                                <div class="row ">
			                                    <div class="col-sm-3">
			                                        <label class="form-check-label">
			                                            <input class="form-check-input" type="checkbox" value="">Facebook
			                                        </label>
			                                    </div>
			                                    <div class="col-sm-9">
			                                        <input class="form-control" type="text" value="" placeholder="A�adir url de su red social">
			                                    </div>
			                                </div>
			                                <div class="row ">
			                                    <div class="col-sm-3">
			                                        <label class="form-check-label">
			                                            <input class="form-check-input" type="checkbox" value="">Snapchat
			                                        </label>
			                                    </div>
			                                    <div class="col-sm-9">
			                                        <input class="form-control" type="text" value="" placeholder="A�adir url de su red social">
			                                    </div>
			                                </div>
			                                <div class="row ">
			                                    <div class="col-sm-3">
			                                        <label class="form-check-label">
			                                            <input class="form-check-input" type="checkbox" value="">Youtube
			                                        </label>
			                                    </div>
			                                    <div class="col-sm-9">
			                                        <input class="form-control" type="text" value="" placeholder="A�adir url de su red social">
			                                    </div>
			                                </div>
			                                <div class="row ">
			                                    <div class="col-sm-3">
			                                        <label class="form-check-label">
			                                            <input class="form-check-input" type="checkbox" value="">Google +
			                                        </label>
			                                    </div>
			                                    <div class="col-sm-9">
			                                        <input class="form-control" type="text" value="" placeholder="A�adir url de su red social">
			                                    </div>
			                                </div>
			                            </div>
			                        </div>
                            	</div>
                            	<div class = "col-sm-6">
                            		<div class="form-group">
			                            <label><strong>Provincia</strong></label>
			                            <input name="provincia" type="text" class="form-control" id="provincia" placeholder="Provincia">
			                        </div>
			                        <div class="form-group">
			                            <label><strong>Poblaci&oacute;n</strong></label>
			                            <input name="poblacion" type="text" class="form-control" id="poblacion" placeholder="Poblaci&oacute;n">
			                        </div>
			                        <div class="row form-group">
		                                <div class="col-sm-9">
		                                    <label for="calle"><strong>Calle</strong></label>
		                                    <input name="direccion" type="text" class="form-control" id="calle" placeholder="Ubicaci&oacute;n">
		                                </div>
		                                <div class="col-sm-3">
		                                    <label for="numero"><strong>NÂº</strong></label>
		                                    <input type="number" class="form-control" id="numero" placeholder="Ubicaci&oacute;n">
		                                </div>
			                        </div>
                            	</div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <h3 class="text-center">Descripcion</h3>
                                    <div class="menus">
                                        <textarea name="descripcion">Escribe aquí tus comentarios</textarea>
                                    </div>
                                </div>
                            </div>
                            <input class="col-sm-12 waves-effect waves-light btn" type="submit" value="Guardar Canvios">
                        </div>
                    </div>
                </div>
            </div>
            </form>
        </div>
    </div>
    <!-- Modal Structure -->
    <div id="modal1" class="modal">
        <div class="modal-content">
            <h4>Nombre Restaurante</h4>
            <p>627 645 578</p>
        </div>
        <div class="modal-footer">
            <a href="#!" class="modal-action modal-close waves-effect waves-green btn-flat">Agree</a>
        </div>
    </div>
    <footer>

    </footer>
</body>

</html>
