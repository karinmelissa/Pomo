
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="es">
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<link rel="icon" href="/images/pomo.ico">
		 <!-- FONT AWESOME -->
	    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
	    <!--Styles-->
	    <link rel="stylesheet" type="text/css" href="CSS/proyectStyles.css">
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
	        <div class="main">
	            <div>
	              <h1>Agrega un nuevo proyecto!</h1>
	
	                <img src="images/Frame 7.png" alt="conejo avatar" id="conejo">
	            </div>
	            <form:form class="form" method="POST" action="/nuevo-pomo" modelAttribute="project">	
	                <label for="fname">Titulo:</label><br>
	                <input class="title-space" type="text" name="titulo" id="ftitulo"
	                placeholder="Nombre de tu siguiente proyecto "><br>
	
	                <label for="fname">Descripcion:</label><br>
	                <textarea class="desc-space" name="descripcion" placeholder="Escribe aqui..."></textarea>
	                <input type="submit" class="submit-boton" value="Agregar"/>
	            </form:form>	
	        </div>
	        <footer class="footer">
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