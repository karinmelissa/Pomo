<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="es">
	<head>
		<meta charset="UTF-8">
		<title>Bienvenida/o</title>
		<link rel="icon" href="/images/pomo.ico">
		<!-- Bootstrap CSS -->
		<link rel="stylesheet" href="bootstrap.min.css">
   		 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
		<!--Styles-->
   		 <link rel="stylesheet" type="text/css" href="CSS/pomoStyles.css">
   		 <!--Script-->
	    <script src="path/to/jquery.min.js"></script>
	    <script src="path/to/bootstrap.min.js"></script>
   		<script src="https://unpkg.com/ionicons@5.2.3/dist/ionicons.js"> </script>
   		<script src="JS/pomodoro-timer.js"></script>
		<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	    <script src="http://code.jquery.com/jquery-1.12.0.min.js"></script>
	    <!-- Scroll Reveal -->
 		<script src="https://unpkg.com/scrollreveal"></script>
	    <!-- Include all compiled plugins (below), or include individual files as needed -->
	    <script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	    <script type="text/javascript">
	
	        var _gaq = _gaq || [];
	        _gaq.push(['_setAccount', 'UA-36251023-1']);
	        _gaq.push(['_setDomainName', 'jqueryscript.net']);
	        _gaq.push(['_trackPageview']);
	
	        (function () {
	            var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
	            ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
	            var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
	        })();
	
	    </script>
	</head>
	<body>
		<div class="container">
			<div class="home">
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
	            <div class="landing">
	                <img class="home-image" src="images/pomo-inicio.png" alt="Gato Pomodoro">
	                <div class="pomo-timer" id="timer">
                            <div class="text-center">
                                    <button id="shortButton" class="break-5 btn btn-outline- btn-btn" type="submit"
                                        onclick="onShortTimer()">Short Break</button>
                                    <button id="pomodoroButton" class="pomoboton btn btn-outline- btn-btn" type="submit"
                                        onclick="onPomodoroTimer()">Pomodoro</button>
                                    <button id="longButton" class="break-15 btn btn-outline-  btn-btn" type="submit"
                                        onclick="onLongTimer()">Long Break</button>
                            </div> 
                            <div class="panel panel-default">
                                <div class="panel-body text-center">
                                    <div class="timer-time timer-container">
                                        <div class="timer-time-set timer-box" id="currentTime">
                                            <span class="animated-timer" id="hoursValue">00</span><span class="animated-timer">:</span><span class="animated-timer"
                                                id="minutesValue">00</span><span class="animated-timer">:</span><span class="animated-timer" id="secondsValue">00</span>
                                        </div>
                                        <div class="timer-time-set timer-box" id="nextTime">
                                            <span id="hoursNext">00</span><span>:</span><span
                                                id="minutesNext">00</span><span>:</span><span id="secondsNext">00</span>
                                        </div>
                                    </div>
                                    <input type="text" class="titulo-tarea" placeholder="Titulo de tu tarea"></br>
                                    <select class="bajada">
                                        <option disabled selected class="categories" value="categorias">Categorias</option>
                                        <option class="categories" value="cat1">Estudiar</option>
                                        <option class="categories" value="cat2">Tarea</option>
                                        <option class="categories" value="cat3">Trabajo</option>
                                        <option class="categories"  value="cat4">Personal</option>
                                        <option class="categories"  value="cat5">Otros</option>
                                    </select></br>
                                    <div class="botones">
                                        <button id="startButton" class="play" type="submit" onclick="onStartTimer()">
                                            <i class="fas fa-play-circle"></i>
                                        </button>
                                        <div class="botones-secundarios">
                                            <button id="restartButton" class="reset" type="submit"
                                            onclick="onResetTimer()"> 
                                            <ion-icon  class="restartIcon" id="boton" name="refresh-circle-outline"></ion-icon>
                                            </button>
                                            <button id="stopButton" class="stop" type="submit" onclick="onStopTimer()">
                                                <ion-icon class="pausetIcon" id="boton" name="pause" >
                                                </ion-icon>
                                            </button>
                                        </div>
                                    </div>
                                </div>
                        </div>
                </div>
	            </div>
	        </div>
	        <div class="about">
	            <div class="pomo-info">
	                <h1 class="h-txt">¿Que es la tecnica pomodoro?</h1>
	                <p class="p-txt">La Técnica Pomodoro es un método de gestión del tiempo que puede ayudar a mejorar productividad, fue desarrollada por Francisco Cirillo en los 80's</br>Consiste en dividir  el tiempo en periodos de 25 minutos ,separados por pausas dedicadas al descanso. </br>¿Estás preparadx para mejorar tu productividad? ¡Vamos allá!</p>
	            </div>
	            <img class="about-image" src="images/pomo-estudiando.png" alt="Pomodoro">
	        </div>
	        <div class="informaciones">
	            <div class="icons-1">
	                <div class="icon">
	                    <i class="fas fa-clipboard-list"></i>
	                     <h2 class="txt-icons">Tareas Diarias</h2>
	                </div>
	                <div class="icon">
	                    <i class="fas fa-mug-hot"></i>
	                   <h2 class="txt-icons">Tiempos de descanso</h2>
	                </div>
	             </div>
	             <div class="icons-2">
	                <div class="icon">
	                    <i class="fas fa-laptop"></i>
	                   <h2 class="txt-icons">Proyectos, digitales y analogos</h2>
	                </div>
	                <div class="icon">
	                    <i class="fas fa-tachometer-alt"></i>
	                    <h2 class="txt-icons">Enfoque y tiempos más eficientes</h2>
	                </div>
	            </div>
	            <div class="info-pregunta h-txt">¿En que te puedes organizar y ser mas productiv@ con Pomo?</div>
	        </div>
	        <div class="people">
	        	<h1 class="people-txt">Testimonios</h1>
		        <div class="row">
		            <div class="col" id="block">
		            
		                <div class="row">
		                    <div class="col">
		                        <svg class="flor-svg" width="343" height="350" viewBox="0 0 448 457" fill="none"
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
		                    </div>
		                </div>
		            </div>
		            <div class="col" id="block-1">
		                <div class="row">
		                    <div class="row">
		                        <h5 class="card-title">Jesse Bernebel <br>24 años</h5>
		                        <p class="card-text">“Odio el estudio y todo lo que le rodea, pero POMO ha hecho estas experiencias mucho más llevaderas, como enfocarme en tareas específicas y tener un flujo de trabajo mucho menos disperso, definitivamente he mejorado mis funciones ejecutivas y en el paso me he entrenenido bastante “</p>
		                    </div>
		                    <div class="row">
		                        <h5 class="card-title">Tamara Martínez <br>23 años</h5>
		                        <p class="card-text">“En esta pandemia me tocó estudiar en casa;  tuve que reformular las metodologías de estudio, sin espacios institucionales, mi  habitación pasó a ser una oficina llena de distracciones y enfocarme dentro de un contexto diferente es realmente muy difícil, POMO me ha dado el espacio para estudiar de manera mucho más eficiente”  </p>
		                    </div>
		                </div>
		            </div>
		        </div>
	        </div>
	        <div class="invite">
	        	<h2 class="final-txt">Unete hoy a nuestra comunidad y aprovecha
		                los beneficios exclusivos para miembros </h2>
		        <a class="register-boton" href="/registration">Registrate</a>
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
		<!-- Option 1: Bootstrap Bundle with Popper -->
	    
	</body>
</html>