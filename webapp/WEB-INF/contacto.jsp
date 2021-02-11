<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="es">
	<head>
		<meta charset="UTF-8">
		<link rel="icon" href="/images/pomo.ico">
		<title>Contacto</title>
		<!-- FONT AWESOME -->
    	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
  		 <!--Styles-->
   		 <link rel="stylesheet" type="text/css" href="CSS/contactoStyles.css">
   		 <!-- Script formulalrio de contacto-->
   		 <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/emailjs-com@2/dist/email.min.js"></script>
		 <script type="text/javascript">
			(function() {
				emailjs.init("user_nXYOdjpImnerlUMVXdicI");
			})();
		</script>  
	</head>
	<body>
		<div class="container">
	        <nav class="nav-main">
	             <a href="/"><img src="images/pomo-logo.png" alt="Pomo" class="pomo"></a>
	            <div class="user-botones">
	                	<c:if test="${not empty user}">
		                	<a class="profile-boton" href="/perfil">Mi perfil</a>
		                     <form id="logoutForm" method="POST" action="/logout">
						        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
						        <input class="logout-boton" type="submit" value="Logout" />
						    </form>
	                    </c:if>
	                	<c:if test="${empty user}">
		                    <a class="register-boton" href="/registration">Registrate</a>
		                    <a class="login-boton" href="/login">Login</a>
	                    </c:if>
	                </div>
	        </nav>
	        <div class="main">
	            <div>
	
	            <img src="images/Frame 9.png" alt="ciervo avatar" id="ciervo" >
	            </div>
	            <form class="form" id="form">
	                <p>
	                    <label for="from_name">Nombre:</label><br>
	                    <input class="text-space" type="text"
	                        placeholder="Inserta tu nombre aqui" name="from_name" id="from_name"><br>
	                </p>
	                <p>
	                    <label for="reply_to">Correo:</label><br>
	                    <input class="text-space" placeholder="ejemplo@correo.com"  type="text" name="reply_to" id="reply_to"><br>
	                </p>
	                <p>
	                    <label for="message">Mensaje:</label><br>
	                    <textarea class="message" name="message" id="message" placeholder="Escribe aqui tu mensaje"></textarea><br>
	                </p>
	                <input class="hidden"type="text" name="to_name" value="Pomodoro" id="to_name">
	             
	                <input class="submit-boton" type="submit" value="Enviar" id="button"/>
	            </form>
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
	        <!-- Script formulalrio de contacto-->
   			<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/emailjs-com@2/dist/email.min.js"></script>
	        <script>
		        (function() {
					emailjs.init("user_nXYOdjpImnerlUMVXdicI");
				})();
		        const btn = document.getElementById('button');
	
		        document.getElementById('form')
		         .addEventListener('submit', function(event) {
		           event.preventDefault();
	
		           btn.value = 'Enviando...';
	
		           const serviceID = 'default_service';
		           const templateID = 'template_nz93jor';
	
		           emailjs.sendForm(serviceID, templateID, this)
		            .then(() => {
		              btn.value = 'Enviado';
		              alert('Mensaje enviado.Muchas Gracias!');
		            }, (err) => {
		              btn.value = 'Re-Enviar';
		              alert(JSON.stringify(err));
		            });
		        });
	        </script>
		</div>
	</body>
</html>