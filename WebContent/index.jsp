<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="es">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

    
    
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">


    <!--Import materialize.css--->
       
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/css/materialize.min.css">
       
    
    <link rel="stylesheet" href="css/index.css">
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
            <h1>Menu Diario</h1>
        </div>
  

    <hr>
<form action="busqueda.jsp" method="post">
    <div class="container-fluid">
        <div class="row">

            <div class="col-sm-6">

                <div class="form-group">
                        <input class="form-control" type="text" placeholder="Search">
                        
                </div>

            </div>

            <div class="row">
<div class="selects col-md-6">
                    <select class="form-control chosen" data-placeholder="Choose an option please">                 
                    <option value="" >Todas las regiones</option>
                    <option value="">- selecciona -</option>
                    <option value="">A coru&#241;a</option>
                    <option value="">&#193;lava</option>
                    <option value="">Albacete</option>
                    <option value="">Alicante</option>
                    <option value="">Almer&#237;a</option>
                    <option value="">Asturias</option>
                    <option value="">&#193;vila</option>
                    <option value="">Badajoz</option>
                    <option value="">Baleares</option>
                    <option value="">Barcelona</option>
                    <option value="">Burgos</option>
                    <option value="">C&#225;ceres</option>
                    <option value="">C&#225;diz</option>
                    <option value="">Cantabria</option>
                    <option value="">Castell&#243;n</option>
                    <option value="">Ceuta</option>
                    <option value="">Ciudad Real</option>
                    <option value="">C&#243;rdoba</option>
                    <option value="">Cuenca</option>
                    <option value="">Extranjero</option>
                    <option value="">Girona</option>
                    <option value="">Granada</option>
                    <option value="">Guadalajara</option>
                    <option value="">Guip&#250;zcoa</option>
                    <option value="">Huelva</option>
                    <option value="">Huesca</option>
                    <option value="">Ja&#233;n</option>
                    <option value="">La rioja</option>
                    <option value="">Las palmas</option>
                    <option value="">Le&#243;n</option>
                    <option value="">Lleida</option>
                    <option value="">Lugo</option>
                    <option value="">Madrid</option>
                    <option value="">M&#225;laga</option>
                    <option value="">Melilla</option>
                    <option value="">Murcia</option>
                    <option value="">Navarra</option>
                    <option value="">Ourense</option>
                    <option value="">Palencia</option>
                    <option value="">Pontevedra</option>
                    <option value="">Salamanca</option>
                    <option value="">Santa cruz de tenerife</option>
                    <option value="">Segovia</option>
                    <option value="">Sevilla</option>
                    <option value="">Soria</option>
                    <option value="">Tarragona</option>
                    <option value="">Teruel</option>
                    <option value="">Toledo</option>
                    <option value="">Valencia</option>
                    <option value="">Valladolid</option>
                    <option value="">Vizcaya</option>
                    <option value="">Zamora</option>
                    <option value="">Zaragoza</option>                  
                </select>
                </div>
          
          <div class="selects col-md-6">
                    <select class="form-control chosen" data-placeholder="Choose an option please">                 
                    <option value="" >Todas las poblaciones</option>
                    <option value="">- selecciona -</option>
                    <option value="">A coru&#241;a</option>
                    <option value="">&#193;lava</option>
                    <option value="">Albacete</option>
                    <option value="">Alicante</option>
                    <option value="">Almer&#237;a</option>
                    <option value="">Asturias</option>
                    <option value="">&#193;vila</option>
                    <option value="">Badajoz</option>
                    <option value="">Baleares</option>
                    <option value="">Barcelona</option>
                    <option value="">Burgos</option>
                    <option value="">C&#225;ceres</option>
                    <option value="">C&#225;diz</option>
                    <option value="">Cantabria</option>
                    <option value="">Castell&#243;n</option>
                    <option value="">Ceuta</option>
                    <option value="">Ciudad Real</option>
                    <option value="">C&#243;rdoba</option>
                    <option value="">Cuenca</option>
                    <option value="">Extranjero</option>
                    <option value="">Girona</option>
                    <option value="">Granada</option>
                    <option value="">Guadalajara</option>
                    <option value="">Guip&#250;zcoa</option>
                    <option value="">Huelva</option>
                    <option value="">Huesca</option>
                    <option value="">Ja&#233;n</option>
                    <option value="">La rioja</option>
                    <option value="">Las palmas</option>
                    <option value="">Le&#243;n</option>
                    <option value="">Lleida</option>
                    <option value="">Lugo</option>
                    <option value="">Madrid</option>
                    <option value="">M&#225;laga</option>
                    <option value="">Melilla</option>
                    <option value="">Murcia</option>
                    <option value="">Navarra</option>
                    <option value="">Ourense</option>
                    <option value="">Palencia</option>
                    <option value="">Pontevedra</option>
                    <option value="">Salamanca</option>
                    <option value="">Santa cruz de tenerife</option>
                    <option value="">Segovia</option>
                    <option value="">Sevilla</option>
                    <option value="">Soria</option>
                    <option value="">Tarragona</option>
                    <option value="">Teruel</option>
                    <option value="">Toledo</option>
                    <option value="">Valencia</option>
                    <option value="">Valladolid</option>
                    <option value="">Vizcaya</option>
                    <option value="">Zamora</option>
                    <option value="">Zaragoza</option>                  
                </select>
                </div>
                </div>
                
          
            <div class="selects col-md-12"><center><button class="col-sm-6 btn btn-primary my-2 my-sm-0" type="submit">Search</button></center></div>



    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>

    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/js/materialize.min.js"></script>
    <script src="js/index.js"></script>
</body>

</html>
