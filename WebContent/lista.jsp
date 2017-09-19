<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "java.util.*"%>
<%@ page import = "restaurante.Restaurante"%>

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
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit"><i class="fa fa-filter"></i></button>
            <!-- <input class="btn btn-outline-success my-2 my-sm-0" type = "submit" value = "Buscar"> -->
        </div>

        <div class="row">
        
            <div class="col-md-3 hidden-sm-down">
                <br>
               <form action="servletLista" method="POST">
                <div class="selects col-md-12">
                   <select class="form-control chosen" name="poblacion" data-placeholder="Choose an option please">           
                    <option value="Todas las poblacione">Todas las poblaciones</option>
                    <option value="selecciona">- selecciona -</option>
                    <option value="Mataró">Mataró</option>	
                    <option value="Barcelona">Barcelona</option>	
                    <option value="Aiguafreda">Aiguafreda</option>	
                    <option value="Alella">Alella</option>	
                    <option value="Alpens">Alpens</option>	
                    <option value="L'Ametlla del Vall&#232;s">L'Ametlla del Vall&#232;s</option>	
                    <option value="Arenys de Mar">Arenys de Mar</option>
                    <option value="Arenys de Munt">Arenys de Munt</option>
                    <option value="Arenys de Munt">Arenys de Munt</option>	
                    <option value="Argentona">Argentona</option>	
                    <option value="Art&#233;s">Art&#233;s</option>	
                    <option value="Avi&#224;">Avi&#224; </option>	
                    <option value="Badalona">Badalona</option>	
                    <option value="Badia del Vall&#232;s">Badia del Vall&#232;s</option>	
                    <option value="Bag&#224;">Bag&#224; </option>	
                    <option value="Baleny&#224;">Baleny&#224; </option>	
                    <option value="Balsareny">Balsareny</option>
                                 
                </select>
                </div>

                <div class="selects col-md-12">
                    <select name = "precio" class="form-control chosen" data-placeholder="Choose an option please"> 
                    <option value="" >Filtrar por precio</option>
                    <option value="">- selecciona -</option>
                    <option value="Men&#250; Fin de Semana 10-15&#8364;">Men&#250; Fin de Semana 10-15&#8364;</option>
                    <option value="Men&#250; Fin de Semana 16-20&#8364;">Men&#250; Fin de Semana 16-20&#8364;</option>
                    <option value="Men&#250; Fin de Semana 21-25&#8364;">Men&#250; Fin de Semana 21-25&#8364;</option>
                    <option value="Men&#250; Fin de Semana 26-30&#8364;">Men&#250; Fin de Semana 26-30&#8364;</option>
                    <option value="Men&#250; Diario 10-15&#8364;">Men&#250; Diario 10-15&#8364;</option>
                    <option value="Men&#250; Diario 16-20&#8364;">Men&#250; Diario 16-20&#8364;</option>
                    <option value="Men&#250; Diario 21-25&#8364;">Men&#250; Diario 21-25&#8364;</option>
                    <option value="Men&#250; Diario 26-30&#8364;">Men&#250; Diario 26-30&#8364;</option>
                    <option value="Men&#250;s Especiales +30&#8364;">Men&#250;s Especiales +30&#8364;</option>
                    <option value="Men&#250;s Especiales 10-15&#8364;">Men&#250;s Especiales 10-15&#8364;</option>
                    <option value="Men&#250;s Especiales 16-20&#8364;">Men&#250;s Especiales 16-20&#8364;</option>
                    <option value="Men&#250;s Especiales 20-25&#8364;">Men&#250;s Especiales 20-25&#8364;</option>
                    <option value="Men&#250;s Especiales 26-30&#8364;">Men&#250;s Especiales 26-30&#8364;</option>
                    </select>
                </div>

                <div class="selects col-md-12">
                    <select name = "categoria" class="form-control chosen" data-placeholder="Choose an option please"> 
                    <option value="">Restaurantes</option>
                    <option value="">Bares</option>
                    <option value="">Pizzer&#237;a</option>
                    <option value="">Comida a domicilio</option>
                    <option value="">Cafeter&#237;a</option>
                    </select>
                </div>
                
                <div class="selects col-md-12">
                	<input class="btn btn-outline-success my-2 my-sm-0" type = "submit" value = "Buscar">
                </div>          
                </form>  
            
            <!-- <div class="selects col-md-12">
                    <section class="demo">
                    <select id="select-state" name="state" multiple class="demo-default" placeholder="Platos...">
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
                </div> -->
             	
            </div>
            
            
            
            <div class="row col-md-9">	   
            <%
		    	ArrayList<Restaurante> restaurantes = (ArrayList<Restaurante>)request.getAttribute("listaRestaurantes");
		    		        
		        for (Restaurante rest : restaurantes) {
		        %>
		        	<div class="card col-md-3 col-sm-5">
		                <form action="restaurante.jsp" method="POST" id = "restid">
		                    <center>
		                    <a class="nomarcar" onclick="enviar()" href="#">
		                    	<img class="card-img-top"  src="https://media-cdn.tripadvisor.com/media/photo-s/02/79/22/ff/balmes-rossello.jpg" alt="Card image cap">
		                    </a>
		                    </center>
		                    <div class="card-body">
		                    <a class="nomarcar" onclick="enviar()" href="#">
		                        <h4 class="card-title"><%= rest.getNombre()%></h4>
		                        <p class="card-text"><%= rest.getCategoria()%></p>
		                        <p class="card-text"><%= rest.getDireccion()%></p>
		                    </a>
		                   		<input type = "hidden" name="idRestaurante" value="<%= rest.getIdRestaurantes() %>">
		                        <br><a class="btn btn-primary col-sm-12 waves-effect waves-light btn modal-trigger" href="#modal1"><i class="fa fa-map-marker" aria-hidden="true"></i>&nbsp;Contacto</a>
		                    </div>
		                </form>    
	                </div>
		        <%
		        } 
	        %>         
               
			
                
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
    <script src="js/lista.js"></script>
    
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
        
        function enviar() {
       		document.getElementById("restid").submit();
        }
	</script>

</body>

</html>
    
