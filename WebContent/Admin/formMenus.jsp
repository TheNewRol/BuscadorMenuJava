<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/css/materialize.min.css">
   
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">
    
    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    
    <link rel="stylesheet" type="text/css" href="css/selectize.css" />
    <link rel="stylesheet" href="css/intmenu.css">
    <link rel="stylesheet" href="css/main.css">



  




</head>

<body>

<%
	//String idRetaurante = reques.getParameter("idRestaurante");
	
%>


    <header>
        <nav class="nav-extended">
            <div class="nav-wrapper">
                <a href="#" class="brand-logo">Logo</a>
                <a href="#" data-activates="mobile-demo" class="button-collapse"><i class="material-icons">menu</i></a>
                <ul id="nav-mobile" class="right hide-on-med-and-down">
                    <li><a href="index.jsp">Inicio</a></li>
                   
                </ul>
                <ul class="side-nav" id="mobile-demo">
                    <li><a href="index.jsp">Inicio</a></li>
                    
                </ul>
             
             
                 
            </div>
        </nav>
    </header>
<div class="container-fluid">
    <div class="row">
        <h1>Menu Diario</h1>
        
        
</div>
</div>



  <form action="../servletAdminMenu" method="post">
  <div class="col-sm-6">
 
                    
                    <div class="form-group">
                        <input class="form-control" name="menutitle" type="text" placeholder="Titulo de menu">
                    
						<textarea class="form-control" name="menutexto" placeholder="Menu" rows="10"></textarea>

                    
                   	</div>
					



 <div class="selects col-md-12">
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
                </div>
                <input type="submit" value="guardar">
</form>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js" integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn" crossorigin="anonymous"></script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/js/materialize.min.js"></script>



    <script type="text/javascript" src="js/selectize.js"></script>
    
    
    
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
   
  
   


</body>

</html>