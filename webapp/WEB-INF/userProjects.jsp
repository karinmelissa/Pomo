<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="es">
	<head>
		<meta charset="UTF-8">
		<title>Mis proyectos</title>
		<link rel="icon" href="/images/pomo.ico">
		<!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">

    <link href="CSS/pomo-mis-proyectos-style.css" rel="stylesheet" />

    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2? family = Poppins: wght @ 500 & family = Roboto & display = swap "
        rel=" stylesheet ">

    <script src="https://unpkg.com/ionicons@5.2.3/dist/ionicons.js"> </script>

    <link rel="stylesheet" href="bootstrap.min.css">
    <script src="path/to/jquery.min.js"></script>
    <script src="path/to/bootstrap.min.js"></script>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
	</head>
	<body>
		<div class="container">
        <nav class="nav-main">
            <a href="/"><img src="images/pomo-logo.png" alt="Pomo" class="pomo"></a>
	                <div class="user-botones">
		                     <form id="logoutForm" method="POST" action="/logout">
						        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
						        <input class="logout-boton" type="submit" value="Logout" />
						    </form>
	                </div>
        </nav>
        <div class="fondito">
            <div class="row">
                <div class="col" id="izq" style="margin-left: 100px;  margin-top: 100px;">
                    <div class="row">
                        <div class="list-group" style="width: 300px;">
    
                            <a href="/perfil" id="perfil" class="list-group-item list-group-item-action list-group-item"> Perfil</a>
		                     <a href="/proyectos" id="proyectos"  class="list-group-item list-group-item-action list-group-item"> Mis proyectos </a>
    
                        </div>
                    </div>
    
                    <img src="images/pomo-estudiando.png" alt="" id="pomo-estudiando" class="text-center"
                        style="margin-left:25px; width: 200px; margin-bottom: 30px; margin-top: 100px;">
                </div>
    
                <div class="col text-center" style="margin-top: 100px;" id="derch">
                    <div class="list-group">
                        <table class=table>
                            <tbody>
                                <c:forEach items="${projects}" var="projects">
                                <tr>
                                    <td id="listed" class="list-group-item list-group-item-action list-group-item"><c:out value="${projects.titulo}"/> | <c:out value="${projects.descripcion}"/></td>
                                </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                        <a class="nuevo-boton" href="/nuevo-pomo"><i class="fas fa-plus-circle"></i>Nuevo poyecto</a>
                    </div>
                </div>
            </div>
        </div>
        <footer class="footer" style="margin-top: 80px;">
            <div class="footer-enlaces">
                <div class="footer-txt">
                    <a href="/contacto">Contacto</a>
                    <p>Politicas</p>
                </div>
                <img src="images/pomo-logo.png" alt="Pomo" class="pomo-footer">
                <div class="social">
                    <a href="https://www.instagram.com/pomotimer/" target="_blank" rel="noopener noreferrer"><i class="fab fa-instagram"></i></a>
                     <a href="https://twitter.com/pomo_pomotimer" target="_blank" rel="noopener noreferrer"><i class="fab fa-twitter"></i></a>
                    <a href="#"><i class="fab fa-facebook-square"></i></a>
                </div>
            </div>
            <div class="copyrights">
                <p>Derechos Reservados <i class="far fa-registered"></i></p>
                <p>2021</p>
            </div>
        </footer>
    </div>
	</body>
</html>