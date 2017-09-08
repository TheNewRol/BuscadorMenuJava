<html lang="es-ES">

<head>
    <meta charset="utf-8">
    <title>Lista</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/css/materialize.min.css">
   
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">
    
    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <link rel="stylesheet" href="css/lista.css">
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

    <br><br>


    <div class="container-fluid">
        <div class="filtro col-md-12 hidden-sm-up">
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">
                <i class="fa fa-filter"></i>
            </button>
        </div>

        <div class="row">
            <div class="col-md-3 hidden-sm-down">
                <br>
                <div class="selects col-md-12">
                    <select class="form-control chosen" data-placeholder="Choose an option please">                 
                    <option value="" >Todas las provincias</option>
                    <option value="">- selecciona -</option>
                    <option value="Albacete">Albacete</option>
                    <option value="Alicante">Alicante</option>
                    <option value="Almer&#237;a">Almer&#237;a</option>
                    <option value="Barcelona">Barcelona</option>
                                 
                </select>
                </div>
                
                   
                   
                <div class="selects col-md-12">
                    <select class="form-control chosen" data-placeholder="Choose an option please">                 
                    <option value="Todas las provincias">Todas las provincias</option>
                    <option value="selecciona">- selecciona -</option>
                    <option value="Abrera">Abrera</option> 	
                    <option value="Aguilar de Segarra">Aguilar de Segarra</option>	
                    <option value="Aiguafreda">Aiguafreda</option>	
                    <option value="Alella">Alella</option>	
                    <option value="Alpens">Alpens</option>	
                    <option value="L'Ametlla del Vallès">L'Ametlla del Vallès</option>	
                    <option value="Arenys de Mar">Arenys de Mar</option>
                    <option value="Arenys de Munt">Arenys de Munt</option>
                    <option value="Arenys de Munt">Arenys de Munt</option>	
                    <option value="Argentona">Argentona</option>	
                    <option value="Artés">Artés</option>	
                    <option value="Avià">Avià</option>	
                    <option value="Badalona">Badalona</option>	
                    <option value="Badia del Vallès">Badia del Vallès</option>	
                    <option value="Bagà">Bagà</option>	
                    <option value="Balenyà">Balenyà</option>	
                    <option value="Balsareny">Balsareny</option>	
                    </select>
                    </div>
                
                
                
                

                <div class="selects col-md-12">
                    <select class="form-control chosen" data-placeholder="Choose an option please"> 
                        <option value="" >Filtrar por precio</option>
                        <option value="">- selecciona -</option>
                        <option value="Menú Fin de Semana 10-15€">Menú Fin de Semana 10-15€</option>
                        <option value="Menú Fin de Semana 16-20€">Menú Fin de Semana 16-20€</option>
                        <option value="Menú Fin de Semana 21-25€">Menú Fin de Semana 21-25€</option>
                        <option value="Menú Fin de Semana 26-30€">Menú Fin de Semana 26-30€</option>
                        <option value="Menú Diario 10-15€">Menú Diario 10-15€</option>
                        <option value="Menú Diario 16-20€">Menú Diario 16-20€</option>
                        <option value="Menú Diario 21-25€">Menú Diario 21-25€</option>
                        <option value="Menú Diario 26-30€">Menú Diario 26-30€</option>
                        <option value="Menús Especiales +30€">Menús Especiales +30€</option>
                        <option value="Menús Especiales 10-15€">Menús Especiales 10-15€</option>
                        <option value="Menús Especiales 16-20€">Menús Especiales 16-20€</option>
                        <option value="Menús Especiales 20-25€">Menús Especiales 20-25€</option>
                        <option value="Menús Especiales 26-30€">Menús Especiales 26-30€</option>
                    </select>
                </div>

                <div class="selects col-md-12">
                    <select class="form-control chosen" data-placeholder="Choose an option please"> 
                        <option value="">Restaurantes</option>
                        <option value="">Bar de tapas</option>
                        <option value="">Pizzería</option>
                        <option value="">Comida a domicilio</option>
                        <option value="">Cafetería</option>
                    </select>
                </div>
                
                <div class="selects col-md-12">
                    <section class="demo">
                            <select id="select-state" name="state[]" multiple class="demo-default" placeholder="Platos...">
                                <option value="">Platos...</option>
                                <option value="Pizza">Pizza</option>
                                <option value="Arroz">Arroz</option>
                                <option value="Pollo">Pollo</option>
                                <option value="Paella">Paella</option>
                                <option value="Lomo">Lomo</option>
                                <option value="Postre">Postre</option>
                                <option value="Ensalada">Ensalada</option>
                                <option value="Pescado">Pescado</option>
                                
                            </select>
                        
                    </section>
                </div>

                <div class="selects col-md-12">
                    <button class="btn btn-outline-success my-2 my-sm-0">Buscar</button>
                </div>
            </div>
            
            <div class="row col-md-9">
                <div class="card col-md-3 col-sm-5">
                    <center><img class="card-img-top" src="https://media-cdn.tripadvisor.com/media/photo-s/02/79/22/ff/balmes-rossello.jpg" alt="Card image cap"></center>
                    <div class="card-body">
                        <h4 class="card-title">Restaurante The Balmes</h4>
                        <p class="card-text">Restaurante en Barcelona</p>
                        <p class="card-text">Calle de Balmes, 129.</p>
                        <a class="btn btn-primary col-sm-12 waves-effect waves-light btn modal-trigger" href="#modal1"><i class="fa fa-map-marker" aria-hidden="true"></i>&nbsp;Contacto</a>
                    
                    </div>
                </div>

                <div class="card col-md-3 col-sm-5">
                    <center><img class="card-img-top" src="https://u.tfstatic.com/restaurant_photos/914/16914/169/612/massana-massana-24305.jpg" alt="Card image cap"></center>
                    <div class="card-body">
                        <h4 class="card-title">Restaurante Massana</h4>
                        <p class="card-text">Restaurante en Girona</p>
                        <p class="card-text">Calle Bonastruc de Porta, 10.</p>
                        <a class="btn btn-primary col-sm-12 waves-effect waves-light btn modal-trigger" href="#modal1"><i class="fa fa-map-marker" aria-hidden="true"></i>&nbsp;Contacto</a>
                    </div>
                </div>

                <div class="card col-md-3 col-sm-5">
                    <center><img class="card-img-top" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTn5bgRE5R7IqjclQbvAZ6s__MPPcfjnOTqaS7xKma1gU1Sc_tQ" alt="Card image cap"></center>
                    <div class="card-body">
                        <h4 class="card-title">Restaurante Ferreruela</h4>
                        <p class="card-text">Restaurante en Lleida</p>
                        <p class="card-text">Calle Bobalà, 8.</p>
                        <a class="btn btn-primary col-sm-12 waves-effect waves-light btn modal-trigger" href="#modal1"><i class="fa fa-map-marker" aria-hidden="true"></i>&nbsp;Contacto</a>
                    </div>
                </div>

                <div class="card col-md-3 col-sm-5">
                    <center><img class="card-img-top" src="https://www.tarragonaturisme.cat/sites/default/files/styles/full_image_with_copyright/public/restaurant/galeria/1477262523IMG_0127.JPG?itok=8_De5HY4" alt="Card image cap"></center>
                    <div class="card-body">
                        <h4 class="card-title">Restaurante Barquet</h4>
                        <p class="card-text">Restaurante en Tarragona</p>
                        <p class="card-text">Calle Gasòmetre, 16.</p>
                        <a class="btn btn-primary col-sm-12 waves-effect waves-light btn modal-trigger" href="#modal1"><i class="fa fa-map-marker" aria-hidden="true"></i>&nbsp;Contacto</a>
                    </div>
                </div>

                <div class="card col-md-3 col-sm-5">
                    <center><img class="card-img-top" src="http://www.seriebcn.net/wp-content/uploads/2011/03/iposa-seriebcn-5-460x307.jpg" alt="Card image cap"></center>
                    <div class="card-body">
                        <h4 class="card-title">Restaurante Iposa</h4>
                        <p class="card-text">Restaurante en Barcelona</p>
                        <p class="card-text">Calle de les Floristes de la Rambla, 14.</p>
                        <a class="btn btn-primary col-sm-12 waves-effect waves-light btn modal-trigger" href="#modal1">Contacto</a>
                    </div>
                </div>

                <div class="card col-md-3 col-sm-5">
                    <center><img class="card-img-top" src="http://www.lapizzarra.cl/wordpress/wp-content/uploads/2014/09/galeria1.jpg" alt="Card image cap"></center>
                    <div class="card-body">
                        <h4 class="card-title">Restaurante La Pizzarra</h4>
                        <p class="card-text">Restaurante en Barcelona</p>
                        <p class="card-text">Rambla del Raval, 13.</p>
                        <a class="btn btn-primary col-sm-12 waves-effect waves-light btn modal-trigger" href="#modal1"><i class="fa fa-map-marker" aria-hidden="true"></i>&nbsp;Contacto</a>
                    </div>
                </div>

                <div class="card col-md-3 col-sm-5">
                    <center><img class="card-img-top" src="https://s3-media1.fl.yelpcdn.com/bphoto/GuauhJjVa8DCjPIdlPn4ig/ls.jpg" alt="Card image cap"></center>
                    <div class="card-body">
                        <h4 class="card-title">Bar Bizkaia</h4>
                        <p class="card-text">Bar Barraval en Bizkaia</p>
                        <p class="card-text">Calle Lauaxeta Olerkari Kalea,13</p>
                        <a class="btn btn-primary col-sm-12 waves-effect waves-light btn modal-trigger" href="#modal1"><i class="fa fa-map-marker" aria-hidden="true"></i>&nbsp;Contacto</a>
                    </div>
                </div>

                <div class="card col-md-3 col-sm-5">
                    <center><img class="card-img-top" src="https://media-cdn.tripadvisor.com/media/photo-s/08/fb/d6/6f/pizza-circus.jpg" alt="Card image cap"></center>
                    <div class="card-body">
                        <h4 class="card-title">Pizza Circus</h4>
                        <p class="card-text">Pizza Circus en Barcelona</p>
                        <p class="card-text">Calle Nou de la Rambla, 40</p>
                        <a class="btn btn-primary col-sm-12 waves-effect waves-light btn modal-trigger" href="#modal1"><i class="fa fa-map-marker" aria-hidden="true"></i>&nbsp;Contacto</a>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <!-- Modal Structure -->
    <div id="modal1" class="modal modal-fixed-footer">
        <div class="modal-content">
            <h4>Nombre del restaurante</h4>
            <div class="row">
                <div class="col-sm-6">
                    <div>
                        <a href="#!" class="modal-action modal-close waves-effect waves-green btn-flat aceptar">Reservar</a>
                        <div>
                            Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci enim animi praesentium dolore rerum, delectus totam deleniti molestiae iste impedit consequuntur, quis consequatur? Omnis, velit esse at, quam obcaecati corporis.
                        </div>
                    </div>
                    <div>
                        <a href="#!" class="modal-action modal-close waves-effect waves-red btn-flat cancelar">C&oacute;mo llegar</a>
                    </div>
                </div>
                <div class="col-sm-6">
                    <div id="map">

                    </div>
                </div>
            </div>
        </div>
    </div>
    

    <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>

    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js" integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn" crossorigin="anonymous"></script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/js/materialize.min.js"></script>

    <script src="https://maps.googleapis.com/maps/api/js?"></script>

    <script type="text/javascript" src="js/selectize.js"></script>
    
    <link rel="stylesheet" type="text/css" href="css/selectize.css" />
    
    <script>
        $(function() {
           $('#select-state').selectize({
                maxItems: 5
            });
        });

    </script>
    
    <script languague="javascript">
        function mostrar() {
            div = document.getElementById('flotante');
            div.style.display = '';
        }

        function cerrar() {
            div = document.getElementById('flotante');
            div.style.display = 'none';
        }
</script>

<!--
    <script src="js/multiple_select.js"></script>
-->
   
    <script src="js/lista.js"></script>

</body>

</html>
    
