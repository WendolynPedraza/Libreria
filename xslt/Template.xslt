<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
	<xsl:output method="html" indent="yes"/>
	<xsl:param name="TipoLibros" select="TipoLibros"></xsl:param>

	<xsl:template match="Libreria">
		<html>

			<head>
				<!-- Basic -->
				<meta charset="utf-8" />
				<meta http-equiv="X-UA-Compatible" content="IE=edge" />
				<!-- Mobile Metas -->
				<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
				<!-- Site Metas -->
				<meta name="keywords" content="" />
				<meta name="description" content="" />
				<meta name="author" content="" />
				<link rel="shortcut icon" href="images/favicon.png" type=""></link>

				<title> Feane </title>

				<!-- bootstrap core css -->
				<link rel="stylesheet" type="text/css" href="css/bootstrap.css" />

				<!--owl slider stylesheet -->
				<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css" />
				<!-- nice select  -->
				<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-nice-select/1.1.0/css/nice-select.min.css" integrity="sha512-CruCP+TD3yXzlvvijET8wV5WxxEh5H8P4cmz0RFbKK6FlZ2sYl3AEsKlLPHbniXKSrDdFewhbmBK5skbdsASbQ==" crossorigin="anonymous" />
				<!-- font awesome style -->
				<link href="css/font-awesome.min.css" rel="stylesheet" />

				<!-- Custom styles for this template -->
				<link href="css/style.css" rel="stylesheet" />
				<!-- responsive style -->
				<link href="css/responsive.css" rel="stylesheet" />

				<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

			</head>

			<body class="sub_page">

				<div class="hero_area">
					<div class="bg-box">
						<img src="images/hero-bg.jpg" alt=""></img>
					</div>
					<!-- header section strats -->
					<header class="header_section">
						<div class="container">
							<nav class="navbar navbar-expand-lg custom_nav-container ">
								<a class="navbar-brand" href="index.html">
									<span>
										Libreria
									</span>
								</a>

								<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
									<span class=""> </span>
								</button>

								<div class="collapse navbar-collapse" id="navbarSupportedContent">
									<ul class="navbar-nav  mx-auto ">


										<xsl:for-each select="Menu/Opcion">
											<li>
												<xsl:choose>
													<xsl:when test="$TipoLibros=@Id">
														<li class="nav-item active">
															<a class="nav-link scrollto active" href="{@Url}">
																<xsl:value-of select="@Texto"/>
															</a>
														</li>
													</xsl:when>
													<xsl:otherwise>
														<li class="nav-item">
															<a class="nav-link scrollto"  href="{@Url}">
																<xsl:value-of select="@Texto"/>
															</a>
														</li>
													</xsl:otherwise>
												</xsl:choose>
											</li>
										</xsl:for-each>


									</ul>
									<div class="user_option">
										<a href="" class="user_link">
											<i class="fa fa-user" aria-hidden="true"></i>
										</a>
										<a class="cart_link" href="#">
											<svg version="1.1" id="Capa_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 456.029 456.029" style="enable-background:new 0 0 456.029 456.029;" xml:space="preserve">
                  <g>
                    <g>
                      <path d="M345.6,338.862c-29.184,0-53.248,23.552-53.248,53.248c0,29.184,23.552,53.248,53.248,53.248
                   c29.184,0,53.248-23.552,53.248-53.248C398.336,362.926,374.784,338.862,345.6,338.862z" />
                    </g>
                  </g>
                  <g>
                    <g>
                      <path d="M439.296,84.91c-1.024,0-2.56-0.512-4.096-0.512H112.64l-5.12-34.304C104.448,27.566,84.992,10.67,61.952,10.67H20.48
                   C9.216,10.67,0,19.886,0,31.15c0,11.264,9.216,20.48,20.48,20.48h41.472c2.56,0,4.608,2.048,5.12,4.608l31.744,216.064
                   c4.096,27.136,27.648,47.616,55.296,47.616h212.992c26.624,0,49.664-18.944,55.296-45.056l33.28-166.4
                   C457.728,97.71,450.56,86.958,439.296,84.91z" />
                    </g>
                  </g>
                  <g>
                    <g>
                      <path d="M215.04,389.55c-1.024-28.16-24.576-50.688-52.736-50.688c-29.696,1.536-52.224,26.112-51.2,55.296
                   c1.024,28.16,24.064,50.688,52.224,50.688h1.024C193.536,443.31,216.576,418.734,215.04,389.55z" />
                    </g>
                  </g>
                  <g>
                  </g>
                  <g>
                  </g>
                  <g>
                  </g>
                  <g>
                  </g>
                  <g>
                  </g>
                  <g>
                  </g>
                  <g>
                  </g>
                  <g>
                  </g>
                  <g>
                  </g>
                  <g>
                  </g>
                  <g>
                  </g>
                  <g>
                  </g>
                  <g>
                  </g>
                  <g>
                  </g>
                  <g>
                  </g>
                </svg>
										</a>
										<form class="form-inline">
											<button class="btn  my-2 my-sm-0 nav_search-btn" type="submit">
												<i class="fa fa-search" aria-hidden="true"></i>
											</button>
										</form>
										<a href="" class="order_online">
											Order Online
										</a>
									</div>
								</div>
							</nav>
						</div>
					</header>
					<!-- end header section -->
				</div>

				<!--Chose section-->
				<xsl:choose>
					<xsl:when test="$TipoLibros =0">
						<xsl:call-template name="Home"></xsl:call-template>
					</xsl:when>
					<xsl:when test="$TipoLibros =1">
						<xsl:call-template name="Libros"></xsl:call-template>
					</xsl:when>
					<xsl:when test="$TipoLibros =2">
						<xsl:call-template name="Conocenos"></xsl:call-template>
					</xsl:when>
					<xsl:when test="$TipoLibros =3">
						<xsl:call-template name="Registrate"></xsl:call-template>
					</xsl:when>
					<xsl:otherwise>
						<xsl:call-template name ="Home"></xsl:call-template>
					</xsl:otherwise>
				</xsl:choose>

				<!-- footer section -->
				<footer class="footer_section">
					<div class="container">
						<div class="row">



							<div class="col-md-4 footer-col">
								<div class="footer_contact">
									<h4>
										Contactanos
									</h4>
									<div class="contact_link_box">
										<xsl:for-each select="Informacion">
											<a href="">
												<i class="fa fa-map-marker" aria-hidden="true"></i>
												<span>
													<xsl:value-of select="Direccion"/>
												</span>
											</a>
											<a href="">
												<i class="fa fa-phone" aria-hidden="true"></i>
												<span>
													<xsl:value-of select="Telefono"/>
												</span>
											</a>
											<a href="">
												<i class="fa fa-envelope" aria-hidden="true"></i>
												<span>
													<xsl:value-of select="Email"/>
												</span>
											</a>
										</xsl:for-each>
									</div>
								</div>
							</div>



							<div class="col-md-4 footer-col">
								<div class="footer_detail">
									<a href="" class="footer-logo">
										<xsl:value-of select="Informacion/Nombre"/>
									</a>

									<p>
										<xsl:value-of select="Informacion/Descripcion"/>
									</p>
									<div class="footer_social">
										<a href="">
											<i class="fa fa-facebook" aria-hidden="true"></i>
										</a>
										<a href="">
											<i class="fa fa-twitter" aria-hidden="true"></i>
										</a>
										<a href="">
											<i class="fa fa-linkedin" aria-hidden="true"></i>
										</a>
										<a href="">
											<i class="fa fa-instagram" aria-hidden="true"></i>
										</a>
										<a href="">
											<i class="fa fa-pinterest" aria-hidden="true"></i>
										</a>
									</div>


								</div>
							</div>
							<div class="col-md-4 footer-col">
								<h4>
									Horarios...!
								</h4>
								<p>
									<xsl:value-of select="Informacion/Horarios/Horario"/>
								</p>
							</div>
						</div>
						<div class="footer-info">
							<p>
								<span id="displayYear"></span> All Rights Reserved By
								<a href="https://html.design/">Free Html Templates</a><br></br>
								<br></br>
								<span id="displayYear"></span> Distributed By
								<a href="https://themewagon.com/" target="_blank">ThemeWagon</a>
							</p>
						</div>
					</div>
				</footer>
				<!-- footer section -->

				<!-- jQery -->
				<script src="js/jquery-3.4.1.min.js"></script>
				<!-- popper js -->
				<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous">
				</script>
				<!-- bootstrap js -->
				<script src="js/bootstrap.js"></script>
				<!-- owl slider -->
				<script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js">
				</script>
				<!-- isotope js -->
				<script src="https://unpkg.com/isotope-layout@3.0.4/dist/isotope.pkgd.min.js"></script>
				<!-- nice select -->
				<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-nice-select/1.1.0/js/jquery.nice-select.min.js"></script>
				<!-- custom js -->
				<script src="js/custom.js"></script>
				<!-- Google Map 
				<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCh39n5U-4IoWpsVGUHWdqB6puEkhRLdmI&callback=myMap"
				</script> -->
				<!-- End Google Map -->
			</body>
		</html>

	</xsl:template>

	<!--Template HOME-->
	<xsl:template name ="Home">
		<!--Audio-->
		<section class="tm-section-row p-5">
			<br></br>
			<br></br>
			<h2>Audio</h2>
			<div id="Audio" style="width:100%">
				<img src="images/biblio1.jpg" width="100%"></img>
				<audio controls="true" style="width:100%" autoplay="autoplay">
					<source src="Complent/audio1.mp3"></source>
				</audio>
			</div>
		</section>
		
		<!--Video-->
		<section class="tm-section-row p-5">
			<h2>Video</h2>
			
			<center>
				<h3>"Un lector vive mil vidas antes de morir. La persona que nunca lee vive solamente una" - George R. R. Martin.</h3>
				<text>Mira el video</text>

				<div id="Mira este video." style="width:80%">
					<video controls="true" width="80%" poster="imges/img10.jpg">
						<source src="Complent/video1.mp4"></source>
					</video>
				</div>
			</center>
			<br></br>
			<br></br>
		</section>
	</xsl:template>

	<!--Template Libros-->
	<xsl:template name ="Libros">

		<!-- food section -->

		<section class="food_section layout_padding">
			<div class="container">
				<div class="heading_container heading_center">
					<h2>
						Categorías
					</h2>
				</div>

				<ul class="filters_menu">
					<li class="active" data-filter="*">All</li>
					<xsl:for-each select="Categorias/Categoria">
						<p>
							<li data-filter=".{@Nombre}">
								<xsl:value-of select="@Nombre"></xsl:value-of>
							</li>
						</p>
					</xsl:for-each>
				</ul>


				<div class="filters-content">

					<div class="row grid">
						<xsl:for-each select="Categorias/Categoria/Libro">
							<div class="col-sm-6 col-lg-4 all {../@Nombre}">
								<div class="box">
									<div>
										<div class="img-box">
											<img src="{NombreLib/Imagen}" alt="{NombreLib/Imagen}"></img>
										</div>
										<div class="detail-box">
											<h5>
												<xsl:value-of select="NombreLib/@Nombre"/>
											</h5>
											<p>
												<xsl:value-of select="NombreLib/Autor"/>
												<br></br>
												<xsl:value-of select="NombreLib/AñoPublicacion"/>
											</p>
											<div class="options">
												<h6>
													<xsl:value-of select="NombreLib/Precio"/>
												</h6>
												<a href="#">
													<svg version="1.1" id="Capa_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 456.029 456.029" style="enable-background:new 0 0 456.029 456.029;" xml:space="preserve">
                        <g>
                          <g>
                            <path d="M345.6,338.862c-29.184,0-53.248,23.552-53.248,53.248c0,29.184,23.552,53.248,53.248,53.248
                         c29.184,0,53.248-23.552,53.248-53.248C398.336,362.926,374.784,338.862,345.6,338.862z" />
                          </g>
                        </g>
                        <g>
                          <g>
                            <path d="M439.296,84.91c-1.024,0-2.56-0.512-4.096-0.512H112.64l-5.12-34.304C104.448,27.566,84.992,10.67,61.952,10.67H20.48
                         C9.216,10.67,0,19.886,0,31.15c0,11.264,9.216,20.48,20.48,20.48h41.472c2.56,0,4.608,2.048,5.12,4.608l31.744,216.064
                         c4.096,27.136,27.648,47.616,55.296,47.616h212.992c26.624,0,49.664-18.944,55.296-45.056l33.28-166.4
                         C457.728,97.71,450.56,86.958,439.296,84.91z" />
                          </g>
                        </g>
                        <g>
                          <g>
                            <path d="M215.04,389.55c-1.024-28.16-24.576-50.688-52.736-50.688c-29.696,1.536-52.224,26.112-51.2,55.296
                         c1.024,28.16,24.064,50.688,52.224,50.688h1.024C193.536,443.31,216.576,418.734,215.04,389.55z" />
                          </g>
                        </g>
                        <g>
                        </g>
                        <g>
                        </g>
                        <g>
                        </g>
                        <g>
                        </g>
                        <g>
                        </g>
                        <g>
                        </g>
                        <g>
                        </g>
                        <g>
                        </g>
                        <g>
                        </g>
                        <g>
                        </g>
                        <g>
                        </g>
                        <g>
                        </g>
                        <g>
                        </g>
                        <g>
                        </g>
                        <g>
                        </g>
                      </svg>
												</a>
											</div>
										</div>
									</div>
								</div>
							</div>
						</xsl:for-each>
					</div>

				</div>

				<!--<div class="btn-box">
					<a href="">
						View More
					</a>
				</div>-->
			</div>
		</section>

		<!-- end food section -->




	</xsl:template>

	<!--Template Conocenos-->
	<xsl:template name ="Conocenos">
		<link rel="stylesheet" href="./css/juego.css"></link>
		<script src="./js/juego.js"></script>
		<script src="../js/google.js" type="module"></script>


		<!-- about section -->


		<section class="about_section layout_padding">
			<div class="container  ">

				<div class="row">
					<div class="col-md-6 ">
						<div class="img-box">
							<img src="images/img10.jpg" alt=""></img>
						</div>
					</div>
					<div class="col-md-6">
						<div class="detail-box">
							<div class="heading_container">
								<h2>
									<xsl:value-of select="Informacion/Nombre"/>
								</h2>
							</div>
							<p>
								Bienvenido a libreria ABC, tu destino literario en línea.
								En nuestra tienda encontrarás una amplia selección de libros para todos los gustos y edades. Ya seas un amante de la ficción, un ávido lector de no ficción, o busques títulos especializados en temas específicos, tenemos algo para ti.

								Desde los clásicos inmortales hasta las últimas novedades editoriales, ofrecemos una experiencia de compra fácil y segura, con envíos rápidos a todo el país. Cada libro en nuestra tienda ha sido seleccionado con cuidado para brindarte una experiencia de lectura única. All
							</p>
							<!--<a href="">
								Read More
							</a>-->
						</div>
					</div>
				</div>
			</div>
		</section>

		<!-- end about section -->
		<br>
		</br>
		<center>
			<h3 style="color: white">Arrastre las piezas para formar la imagen.</h3>
		</center>

		<div onload="comprobarnavegador();">
			<header>
				<h1>  </h1>
			</header>

			<section id="contenedorPuzzle">
				<div id="contenedorPiezas" ondragenter="return enter(event)" ondragover="return over(event)" ondrop="return drop(event)">
					<img id="pieza3" src="img/img3.PNG" alt="pieza3" draggable="true" ondragstart="start(event)" ondragend="end(event)"></img>
					<img id="pieza2" src="img/img2.PNG" alt="pieza2" draggable="true" ondragstart="start(event)" ondragend="end(event)"></img>
					<img id="pieza4" src="img/img4.PNG" alt="pieza4" draggable="true" ondragstart="start(event)" ondragend="end(event)"></img>
					<img id="pieza1" src="img/img1.PNG" alt="pieza1" draggable="true" ondragstart="start(event)" ondragend="end(event)"></img>
				</div>
				<div id="puzzle">
					<div class="contenedorPieza" id="uno" ondragenter="return enter(event)" ondragover="return over(event)" ondrop="return drop(event)"></div>
					<div class="contenedorPieza" id="dos" ondragenter="return enter(event)" ondragover="return over(event)" ondrop="return drop(event)"></div>
					<div class="contenedorPieza" id="tres" ondragenter="return enter(event)" ondragover="return over(event)" ondrop="return drop(event)"></div>
					<div class="contenedorPieza" id="cuatro" ondragenter="return enter(event)" ondragover="return over(event)" ondrop="return drop(event)"></div>
				</div>
			</section>
		</div>




		<!--Mapa-->
		<div data-aos="fade-up">
			<style>
				#map{
				border:0;
				width:100%;
				height:350px;
				}
			</style>
			<div id="google-map">
				<div id="map"></div>
			</div>
			<text style="color: white" id="direccion">Esta es una etiqueta de texto </text>
			<!--<div class="col-lg-12 margin-bottom-30" id="street" style="height: 400px; width: 100%"></div>-->
			<br></br>
			<h2 style="color: white;">Arratre el muñeco naranja para ver la ubicacion (StreetView).</h2>
		</div>

		<!--API de Google-->

		<script>
			// Definir la función initMap globalmente
			function initMap() {
			// Asegúrate de que aquí inicializas el mapa correctamente
			const mapOptions = {
			center: { lat: 19.314015039965188, lng: -99.11772220513485 },  // Cambia estas coordenadas por las deseadas
			zoom: 15
			};
			const map = new google.maps.Map(document.getElementById('map'), mapOptions);
			}
		</script>

		<script>
			<![CDATA[
			(g=>{var h,a,k,p="The Google Maps JavaScript API",c="google",l="importLibrary",q="__ib__",m=document,b=window;b=b[c]||(b[c]={});var d=b.maps||(b.maps={}),r=new Set,e=new URLSearchParams,u=()=>h||(h=new Promise(async(f,n)=>{await (a=m.createElement("script"));e.set("libraries",[...r]+"");for(k in g)e.set(k.replace(/[A-Z]/g,t=>"_"+t[0].toLowerCase()),g[k]);e.set("callback",c+".maps."+q);a.src=`https://maps.${c}apis.com/maps/api/js?`+e;d[q]=f;a.onerror=()=>h=n(Error(p+" could not load."));a.nonce=m.querySelector("script[nonce]")?.nonce||"";m.head.append(a)}));d[l]?console.warn(p+" only loads once. Ignoring:",g):d[l]=(f,...n)=>r.add(f)&&u().then(()=>d[l](f,...n))})({
			key: "AIzaSyCWeeateTaYGqsHhNcmoDfT7Us-vLDZVPs",
			// Add other bootstrap parameters as needed, using camel case.
			// Use the 'v' parameter to indicate the version to load (alpha, beta, weekly, etc.)
			});]]>
		</script>



		<!--Referencia a mi archivo JS-->
		<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCWeeateTaYGqsHhNcmoDfT7Us-vLDZVPs&amp;callback=initMap"
				async="" defer=""></script>



	</xsl:template>

	<!--Template REGISTRATE-->

	<xsl:template name ="Registrate">

		<!---Mi script personalizados-->
		<script src="js/miScript.js" type="text/javascript"> </script>

		<!-- book section -->
		<section class="book_section layout_padding">
			<div class="container">
				<div class="heading_container">
					<h2>
						Registrate...!
					</h2>
				</div>
				<div class="row">
					<div class="col-md-6">
						<div class="form_container">
							<form id="myForm">
								<div>
									<input type="text" class="form-control" placeholder="Nombre" id="nombre" />
								</div>
								<div>
									<input type="text" class="form-control" placeholder="Número" id="numero" />
								</div>
								<div>
									<input type="email" class="form-control" placeholder="Correo" id="correo" />
								</div>
								<div>
									<input type="date" class="form-control" id="fecha" />
								</div>
								<div class="btn_box">
									<button type="submit" id="boton">Registrarse</button>
								</div>
							</form>

							<!-- Al final del cuerpo, antes de cerrar el </body> -->
							<script src="script.js"></script>


							<!--
              <div>
                <input type="text" class="form-control" placeholder="Nombre" id="nombre"/>
              </div>
              <div>
                <input type="text" class="form-control" placeholder="Numero" id="numero"/>
              </div>
              <div>
                <input type="email" class="form-control" placeholder="correo" id="correo"/>
              </div>
				
              <div>
                <select class="form-control nice-select wide">
                  <option value="" disabled="" selected="">
                    How many persons?
                  </option>
                  <option value="">
                    2
                  </option>
                  <option value="">
                    3
                  </option>
                  <option value="">
                    4
                  </option>
                  <option value="">
                    5
                  </option>
                </select>
              </div>
              <div>
                <input type="date" class="form-control"></input>
              </div>
              <div class="btn_box">
                <button type="submit" id="boton" onclick="enviar_formulario()">
                  Registrarse
                </button>
              </div>
            </form>-->
						</div>
						<div class="col-md-6">
							<div class="map_container ">
								<div id="googleMap"></div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- end book section -->


	</xsl:template>
</xsl:stylesheet>
