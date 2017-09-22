<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "db.DBConn" %>
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
                    <li><a href="index.jsp">Inicio</a></li>
                    <li><a href="Registro.jsp">Acceso Restaurante</a></li>
                </ul>
                <ul class="side-nav" id="mobile-demo">
                    <li><a href="index.jsp">Inicio</a></li>
                    <li><a href="Registro.jsp">Acceso Restaurante</a></li>
                </ul>
             
             
                 
            </div>
        </nav>
    </header>
<div class="container-fluid">
    <div class="row">
        <h1>Menu Diario</h1>
    </div>


    <hr>
    <form action="servletBusqueda" method="post">
        <div class="container-fluid">
            <div class="row">

                <div class="col-sm-6">

                    <div class="form-group">
                        <input name="textsearch" class="form-control" type="text" placeholder="Search">

                    </div>




                    
                </div>


                    <div class="selects col-md-6">
                        <select class="form-control chosen" name="searchpoblacion" data-placeholder="Choose an option please">                 
                            <option value="">- Selecciona Población -</option>
                            <%
                            	String [] poblaciones = DBConn.executarQueryBusquedaPoblacion();
                            	for(int i = 0; i < poblaciones.length; i++){
                        	%>
                        			<option value = "<%= poblaciones[i] %>"><%= poblaciones[i] %></option>
                            <%	
                            	}
                            %>
                            
                        </select>
                    </div>
            </div>

        </div>

        <div class="selects col-md-12">
            <center><button class="col-sm-6 btn btn-primary my-2 my-sm-0" type="submit">Search</button></center>
        </div>
    </form>
</div>


    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>

    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/js/materialize.min.js"></script>
    <script src="js/index.js"></script>
</body>

</html>
