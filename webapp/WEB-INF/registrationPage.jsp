
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="es">
	<head>
		<meta charset="UTF-8">
		<title>Registrate!</title>
		<link rel="icon" href="/images/pomo.ico">
		<!-- FONT AWESOME -->
   		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
   		<!-- CSS -->
		<link rel="stylesheet" type="text/css" href="CSS/styles.css"> 
	</head>
	<body>
		<div class="container">
			<nav class="nav-main">
	            <a href="/"><img src="images/pomo-logo.png" alt="Pomo" class="pomo"></a>
	            <a class="action-boton" href="/login">Login</a>
	        </nav>
			<div class="main">
				<svg class="flor-svg" width="399" height="407" viewBox="0 0 448 457" fill="none"
                xmlns="http://www.w3.org/2000/svg">
                <g id="undraw_Crypto_flowers_bjmo 1">
                    <g id="base">
                        <path id="Vector"
                            d="M139.874 321.626H126.369V435.792C126.369 435.792 213.534 464.026 298.244 435.792V321.626H139.874Z"
                            fill="#F3D250" />
                        <path id="Vector_2"
                            d="M211.079 335.13C257.863 335.13 295.788 329.359 295.788 322.24C295.788 315.122 257.863 309.351 211.079 309.351C164.295 309.351 126.369 315.122 126.369 322.24C126.369 329.359 164.295 335.13 211.079 335.13Z"
                            fill="#F3D250" />
                        <path id="Vector_3" opacity="0.1"
                            d="M211.237 334.55C258.021 334.55 295.946 328.779 295.946 321.66C295.946 314.542 258.021 308.771 211.237 308.771C164.453 308.771 126.527 314.542 126.527 321.66C126.527 328.779 164.453 334.55 211.237 334.55Z"
                            fill="black" />
                    </g>
                    <g id="blue-leaves">
                        <path id="Vector_4"
                            d="M309.548 185.225C288.179 264.213 214.984 313.133 214.984 313.133C214.984 313.133 176.435 233.987 197.805 154.999C219.174 76.0103 292.369 27.0908 292.369 27.0908C292.369 27.0908 330.918 106.237 309.548 185.225Z"
                            fill="#5CA2D5" />
                        <path id="Vector_5"
                            d="M309.548 185.225C288.179 264.213 214.984 313.133 214.984 313.133C214.984 313.133 176.435 233.987 197.805 154.999C219.174 76.0103 292.369 27.0908 292.369 27.0908C292.369 27.0908 330.918 106.237 309.548 185.225Z"
                            fill="black" fill-opacity="0.1" />
                        <path id="Vector_6"
                            d="M115.146 185.225C136.516 264.213 209.711 313.133 209.711 313.133C209.711 313.133 248.259 233.987 226.89 154.999C205.52 76.0103 132.325 27.0908 132.325 27.0908C132.325 27.0908 93.7767 106.237 115.146 185.225Z"
                            fill="#AED7F2" />
                        <path id="Vector_7"
                            d="M146.547 168.25C205.185 225.327 212.347 313.068 212.347 313.068C212.347 313.068 124.438 308.269 65.8003 251.191C7.16224 194.114 0 106.373 0 106.373C0 106.373 87.9089 111.172 146.547 168.25Z"
                            fill="#5CA2D5" />
                        <path id="Vector_8"
                            d="M278.147 168.25C219.509 225.327 212.347 313.068 212.347 313.068C212.347 313.068 300.256 308.269 358.894 251.191C417.532 194.114 424.694 106.373 424.694 106.373C424.694 106.373 336.785 111.172 278.147 168.25Z"
                            fill="#5CA2D5" />
                    </g>
                    <g id="pink-leaves">
                        <path id="Vector_9"
                            d="M38.3079 200.429C40.223 207.377 46.8764 211.604 46.8764 211.604C46.8764 211.604 50.425 204.566 48.5099 197.617C46.5948 190.669 39.9414 186.441 39.9414 186.441C39.9414 186.441 36.3928 193.48 38.3079 200.429Z"
                            fill="#F59292" />
                        <path id="Vector_10"
                            d="M74.1534 239.127C72.092 246.033 75.4912 253.145 75.4912 253.145C75.4912 253.145 82.2324 249.059 84.2938 242.153C86.3551 235.246 82.956 228.134 82.956 228.134C82.956 228.134 76.2147 232.22 74.1534 239.127Z"
                            fill="#F59292" />
                        <path id="Vector_11"
                            d="M298.514 122.794C296.453 129.701 299.852 136.813 299.852 136.813C299.852 136.813 306.593 132.727 308.655 125.82C310.716 118.914 307.317 111.802 307.317 111.802C307.317 111.802 300.576 115.888 298.514 122.794Z"
                            fill="#F59292" />
                        <path id="Vector_12"
                            d="M319.07 302.538C321.738 309.234 328.816 312.702 328.816 312.702C328.816 312.702 331.568 305.315 328.901 298.62C326.233 291.924 319.155 288.455 319.155 288.455C319.155 288.455 316.402 295.842 319.07 302.538Z"
                            fill="#F59292" />
                        <path id="Vector_13"
                            d="M10.4383 267.31C12.3534 274.259 19.0068 278.486 19.0068 278.486C19.0068 278.486 22.5554 271.448 20.6403 264.499C18.7252 257.55 12.0718 253.323 12.0718 253.323C12.0718 253.323 8.5232 260.362 10.4383 267.31Z"
                            fill="#F59292" />
                    </g>
                    <g id="pink-cyrcle">
                        <path id="Vector_14"
                            d="M212.307 54.0136C227.223 54.0136 239.316 41.9223 239.316 27.0068C239.316 12.0914 227.223 0 212.307 0C197.39 0 185.298 12.0914 185.298 27.0068C185.298 41.9223 197.39 54.0136 212.307 54.0136Z"
                            fill="#F59292" />
                    </g>
                </g>
            </svg>
			  	    <form:form class="form" method="POST" action="/registration" modelAttribute="user">
				        <p>
				            <form:label path="name">Nombre:</form:label><br>
				            <form:errors path="name"/>
				            <form:input class="text-space" type="text" path="name" name="name" placeholder="Inserta tu nombre aqui"/>
				        </p>
				        <p>
				            <form:label path="email">Correo:</form:label><br>
				            <form:errors path="email"/>
				            <form:input class="text-space" path="email" name="email" placeholder="example@correo.com"/>
				        </p>
				        <p>
				            <form:label path="password">Contraseña:</form:label><br>
				            <form:errors path="password"/>
				            <form:password class="text-space" path="password" name="password" placeholder="*******"/>
				        </p>
				        <p>
				            <form:label path="passwordConfirmation">Confirmar contraseña:</form:label><br>
				            <form:errors path="passwordConfirmation"/>
				            <form:password class="text-space" path="passwordConfirmation" name="passwordConfirmation" placeholder="*******"/>
				        </p>
				        <input type="submit" class="submit-boton" value="Registrarse"/>
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