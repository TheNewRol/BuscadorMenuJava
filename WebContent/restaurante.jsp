<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <!-- Compiled and minified CSS -->
    <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/css/materialize.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
    <link rel="stylesheet" href="css/restaurante.css">
    
    <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
    <!-- Compiled and minified JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/js/materialize.min.js"></script>
    <script src="https://maps.googleapis.com/maps/api/js?"></script>
    <script src="js/restaurante.js"></script>

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
    <div class="container">
        <div class="container-fluid">
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
                        <div class="card-content">
                            <h3 class="text-center">Nombre Restaurante</h3>
                            <div class="row">
                                <div class="col-md-5 pull-left">
                                        <i class="fa fa-star" aria-hidden="true"></i>
                                        <i class="fa fa-star" aria-hidden="true"></i>
                                        <i class="fa fa-star" aria-hidden="true"></i>
                                        <i class="fa fa-star-half-o" aria-hidden="true"></i>
                                        <i class="fa fa-star-o" aria-hidden="true"></i>
                                </div>
                                <div class="col-md-5 pull-right">
                                    <p>Categoria: <span>Restaruante</span></p>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <center><h1>Menus</h1></center>
                                    <div class="menus">
                                        <p>
                                            lorem90
                                            Lorem ipsum dolor sit amet, consectetur adipisicing elit. Non, quidem quaerat veniam ipsa, tempora, nisi commodi explicabo sapiente ratione obcaecati corporis cumque sequi labore ab aspernatur doloremque eaque nam eligendi magnam porro autem consequuntur quos nulla assumenda! Sit quaerat repudiandae ratione nobis, necessitatibus, eius odit nulla esse vero, placeat nesciunt dolor numquam dolores laborum magni. Dolorum ratione quas, laboriosam illum illo iure tempore dolore enim facilis modi, laudantium asperiores aliquam!
                                        </p>
                                    </div>
                                    <div class="card-action">
                                        <form action="http://maps.google.com/maps" get="" target="_blank">
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
                                <h3>Descripcion</h3>
                                    <p>
                                        Lorem ipsum dolor sit amet, consectetur adipisicing elit.
                                        Deleniti totam rem itaque tempore temporibus nemo reiciendis
                                        at id, ducimus sint accusantium doloribus, vero 
                                        voluptatum dolore repellendus, ea non adipisci cum. 
                                        Eius iure harum, aperiam rem laudantium ea neque dicta 
                                        asperiores eligendi in voluptatem molestiae animi beatae 
                                        tempora repudiandae hic modi.
                                    </p>
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
                    </div>
                </div>
            </div>
        </div>
    </div>
    <footer>
        
    </footer>
</body>
</html>