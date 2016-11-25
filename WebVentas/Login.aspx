﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebVentas.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>WebVentas</title>
    <meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<link rel="stylesheet" href="assets/css/main.css" />

       <link href="Content/StyleSheet1.css" rel="stylesheet" />

    <script src="Scripts/bootstrap.js"></script>
    <script src="Scripts/jquery-3.1.1.js"></script>
    
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/jquery-3.1.1.min.js"></script>


</head>
	<body class="index">
		<div id="page-wrapper">

            <nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand glyphicon glyphicon-home" href="/Default.aspx"> Inicio</a>
    </div>

    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      
      <ul class="nav navbar-nav">       
        <li class="dropdown">
          <a href="#" class="dropdown-toggle navbar-brand glyphicon glyphicon-pencil" data-toggle="dropdown" role="button" aria-expanded="true"> Resgistros <span class="caret"></span></a>
          <ul class="dropdown-menu" role="menu">
            <li><a href="/Registros/RegistroUsuario.aspx">Usuario</a></li>
            <li><a href="/Registros/RegistroSuplidor.aspx">Suplidor</a></li>
            <li><a href="/Registros/RegistroProducto.aspx">Producto</a></li>
            <li><a href="/Registros/RegistroVenta.aspx">Venta</a></li>
            <li><a href="/Registros/RegistroCompra.aspx">Compra</a></li>
          </ul>
        </li>
      </ul>
       
      <ul class="nav navbar-nav">
        <li class="dropdown">
          <a href="#" class="dropdown-toggle  glyphicon glyphicon-search" data-toggle="dropdown" role="button" aria-expanded="false"> Consultas <span class="caret"></span></a>
          <ul class="dropdown-menu" role="menu">
            <li><a href="/Consultas/ConsultaUsuario.aspx">Usuario</a></li>
            <li><a href="Consultas/ConsultaProducto.aspx">Suplidor</a></li>
            <li><a href="Consultas/ConsultaCompra.aspx">Compra</a></li>
          </ul>
        </li>
      </ul>

        <ul class="nav navbar-nav">       
        <li class="dropdown">
          <a href="#" class="dropdown-toggle glyphicon glyphicon-duplicate" data-toggle="dropdown" role="button" aria-expanded="false"> Reportes <span class="caret"></span></a>
          <ul class="dropdown-menu" role="menu">
            <li><a href="/Reportes/ReporteUsuario.aspx">Usuario</a></li>
            <li><a href="/Reportes/ReporteSuplidor.aspx">Suplidor</a></li>
            <li><a href="/Reportes/ReporteProducto.aspx">Producto</a></li>
            <li><a href="/Registros/RegistroVenta.aspx">Venta</a></li>
            <li><a href="/Registros/RegistroCompra.aspx">Compra</a></li>
          </ul>
        </li>
      </ul>

    </div>
  </div>
</nav>
			<!-- Header -->
				<header id="header" class="alt">
					<h1 id="logo"><a href="/Default.aspx"> WebVentas </a></h1>
					<nav id="nav">
						<ul>
							<li class="current"><a href="#">Contactos</a></li>
							<li><a href="#" class="button special">Registrarte</a></li>
						</ul>
					</nav>
				</header>




			<!-- Banner -->
				<section id="banner">

					<!--
						".inner" is set up as an inline-block so it automatically expands
						in both directions to fit whatever's inside it. This means it won't
						automatically wrap lines, so be sure to use line breaks where
						appropriate (<br />).
					-->
					<div class="inner">

						<header>
							<h2>Login</h2>
						</header>
                        <form runat="server">
                             <div class="form-group">
                             <div class="row 50%">
                                 <div class="6u 12u(mobile)">
                                     <asp:TextBox  runat="server"  type="text" class="form-control" id="TextBoxUsuario" placeholder="Usuario"></asp:TextBox>
                                 </div>  
                                 <div class="6u 12u(mobile)">
                                    <asp:TextBox  runat="server"  type="password" class="form-control" id="TextBoxContraseña" placeholder="Contraseña"></asp:TextBox>
                                 </div>                          
                             </div>  
                             </div>
                        </form>

						<p>Registrate en <strong> WebVentas</strong>, gratis
						<br />
						aqui
						<br />
						<a href="#">Registrar</a>.</p>
						<footer>
							<ul class="buttons vertical">
								<li><a href="Default.aspx" class="button fit scrolly">Iniciar Sesion</a></li>
							</ul>
						</footer>

					</div>

				</section>

			<!-- Main -->
				<article id="main">

					<!-- One 
						<section class="wrapper style2 container special-alt">
							<div class="row 50%">
								<div class="8u 12u(narrower)">

									<header>
										<h2>Behold the <strong>icons</strong> that visualize what you’re all about. or just take up space. your call bro.</h2>
									</header>
									<p>Sed tristique purus vitae volutpat ultrices. Aliquam eu elit eget arcu comteger ut fermentum lorem. Lorem ipsum dolor sit amet. Sed tristique purus vitae volutpat ultrices. eu elit eget commodo. Sed tristique purus vitae volutpat ultrices. Aliquam eu elit eget arcu commodo.</p>
									<footer>
										<ul class="buttons">
											<li><a href="#" class="button">Find Out More</a></li>
										</ul>
									</footer>

								</div>
								<div class="4u 12u(narrower) important(narrower)">

									<ul class="featured-icons">
										<li><span class="icon fa-clock-o"><span class="label">Feature 1</span></span></li>
										<li><span class="icon fa-volume-up"><span class="label">Feature 2</span></span></li>
										<li><span class="icon fa-laptop"><span class="label">Feature 3</span></span></li>
										<li><span class="icon fa-inbox"><span class="label">Feature 4</span></span></li>
										<li><span class="icon fa-lock"><span class="label">Feature 5</span></span></li>
										<li><span class="icon fa-cog"><span class="label">Feature 6</span></span></li>
									</ul>

								</div>
							</div>
						</section> -->

					<!-- Two -->
						<section class="wrapper style1 container special">
							<div class="row">
								<div class="4u 12u(narrower)">

									<section>
										<span class="icon featured fa-check"></span>
										<header>
											<h3>This is Something</h3>
										</header>
										<p>Sed tristique purus vitae volutpat ultrices. Aliquam eu elit eget arcu commodo suscipit dolor nec nibh. Proin a ullamcorper elit, et sagittis turpis. Integer ut fermentum.</p>
									</section>

								</div>
								<div class="4u 12u(narrower)">

									<section>
										<span class="icon featured fa-check"></span>
										<header>
											<h3>Also Something</h3>
										</header>
										<p>Sed tristique purus vitae volutpat ultrices. Aliquam eu elit eget arcu commodo suscipit dolor nec nibh. Proin a ullamcorper elit, et sagittis turpis. Integer ut fermentum.</p>
									</section>

								</div>
								<div class="4u 12u(narrower)">

									<section>
										<span class="icon featured fa-check"></span>
										<header>
											<h3>Probably Something</h3>
										</header>
										<p>Sed tristique purus vitae volutpat ultrices. Aliquam eu elit eget arcu commodo suscipit dolor nec nibh. Proin a ullamcorper elit, et sagittis turpis. Integer ut fermentum.</p>
									</section>

								</div>
							</div>
						</section>
				</article>

			<!-- CTA -->
				<section id="cta">

					<header>
						<h2>Ready to do <strong>something</strong>?</h2>
						<p>Proin a ullamcorper elit, et sagittis turpis integer ut fermentum.</p>
					</header>
					<footer>
						<ul class="buttons">
							<li><a href="#" class="button special">Take My Money</a></li>
							<li><a href="#" class="button">LOL Wut</a></li>
						</ul>
					</footer>

				</section>

			<!-- Footer -->
				<footer id="footer">

					<ul class="icons">
						<li><a href="#" class="icon circle fa-twitter"><span class="label">Twitter</span></a></li>
						<li><a href="#" class="icon circle fa-facebook"><span class="label">Facebook</span></a></li>
						<li><a href="#" class="icon circle fa-google-plus"><span class="label">Google+</span></a></li>
						<li><a href="#" class="icon circle fa-github"><span class="label">Github</span></a></li>
						<li><a href="#" class="icon circle fa-dribbble"><span class="label">Dribbble</span></a></li>
					</ul>

					<ul class="copyright">
						<li>&copy; Untitled</li><li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
					</ul>

				</footer>

		</div>

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.dropotron.min.js"></script>
			<script src="assets/js/jquery.scrolly.min.js"></script>
			<script src="assets/js/jquery.scrollgress.min.js"></script>
			<script src="assets/js/skel.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>

	</body>
</html>