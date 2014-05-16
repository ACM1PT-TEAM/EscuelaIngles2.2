<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title><g:layoutTitle default="Escuela de Ingles | ACM1PT"/></title>
		<meta name="description" content="">
		<meta name="viewport" content="width=device-width">

		<link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap.min.css')}">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap-responsive.min.css')}">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'font-awesome.min.css')}">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'main.css')}">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'sl-slide.css')}">

		<script src="js/vendor/modernizr-2.6.2-respond-1.1.0.min.js"></script>
		<g:javascript src="vendor/modernizr-2.6.2-respond-1.1.0.min.js" />

		<!-- Le fav and touch icons -->
		<link rel="shortcut icon" href="images/ico/favicon.ico">
		<link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/apple-touch-icon-144-precomposed.png">
		<link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/apple-touch-icon-114-precomposed.png">
		<link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/ico/apple-touch-icon-72-precomposed.png">
		<link rel="apple-touch-icon-precomposed" href="images/ico/apple-touch-icon-57-precomposed.png">
		<g:layoutHead/>
		<g:javascript library="application"/>		
		<r:layoutResources />
	</head>
	<body>
		<header class="navbar navbar-fixed-top">
		    <div class="navbar-inner">
		        <div class="container">
		            <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
		                <span class="icon-bar"></span>
		                <span class="icon-bar"></span>
		                <span class="icon-bar"></span>
		            </a>
		            <a id="logo" class="pull-left" href="${createLink(uri: '/')}"></a>
		            <div class="nav-collapse collapse pull-right">
		                <ul class="nav">
		                    <li class="active"><a href="${createLink(uri: '/')}">Inicio</a></li>		                   
		                    <li><g:link controller="curso" action="indice">Cursos</g:link></li>
                                    <li class="registro">
		                        <a data-toggle="modal" href="#registroForm">Registro</a>
		                    </li>
							<g:if test="${session.user == null}">
				                <li class="login">
				                    <a data-toggle="modal" href="#loginForm"><i class="icon-lock"></i></a>
				                </li>
							</g:if>
							<g:else>
									<g:if test="${session.user.tipoUsuario == 'alumno'}">
										<li class="active"><a href="${createLink(controller:'alumno', action:'principal_alumno')}">Cuenta</a></li>
									</g:if>
									<g:if test="${session.user.tipoUsuario == 'profesor'}">
										<li class="active"><a href="${createLink(controller:'profesor', action:'principal_profesor')}">Cuenta</a></li>
									</g:if>
									<li class="active"><a href="${createLink(controller:'usuario', action:'logout')}">Salir</a></li>
							</g:else>

		                </ul>        
		            </div><!--/.nav-collapse-->
		        </div>
		    </div>
		</header>
<!-- Registro form -->
<div class="modal hide fade in" id="registroForm" aria-hidden="false">
    <div class="modal-header">
        <i class="icon-remove" data-dismiss="modal" aria-hidden="true"></i>
        <h4>Registro</h4>
    </div>
    <!--Modal Body-->
    <div class="modal-body">
        <form class="form-inline">
			<div class="center">
                <a class="btn btn-primary btn-large" href="${createLink(controller:'profesor',action:'create')}">Profesor</a>
                <a class="btn btn-primary btn-large" href="${createLink(controller:'alumno',action:'create')}">Alumno</a>
            </div>

        </form>
    </div>
    <!--/Modal Body-->
 </div>
 <!--  /Registro form -->                        
                      
<!--  Login form -->
<div class="modal hide fade in" id="loginForm" aria-hidden="false">
    <div class="modal-header">
        <i class="icon-remove" data-dismiss="modal" aria-hidden="true"></i>
        <h4>Login</h4>
    </div>
    <!--Modal Body-->
    <div class="modal-body">
		<g:form controller="usuario" action="authenticate" method="post">
        <!--<form class="form-inline" action="index.html" method="post" id="form-login">-->
            <input type="text" id="email" name="email" class="input-small" placeholder="Email">
            <input type="password" id="password" name="password" class="input-small" placeholder="Password">
<!--        <label class="checkbox">
                <input type="checkbox"> Recordarme
            </label>-->
            <button type="submit" class="btn btn-primary">Entrar</button>
        </g:form>	
        <a href="#">Olvidaste tu contraseña?</a>
    </div>
    <!--/Modal Body-->
</div>
<!--  /Login form -->
		<g:layoutBody/>

<!--Bottom-->
<section id="bottom" class="main">
    <!--Container-->
    <div class="container">

        <!--row-fluids-->
        <div class="row-fluid">

            <!--Contact Form-->
            <div class="span3">
                <h4>Direccion</h4>
                <ul class="unstyled address">
                    <li>
                        <i class="icon-home"></i><strong>Direccion:</strong> 1032 Wayback Lane, Wantagh<br>NY 11793
                    </li>
                    <li>
                        <i class="icon-envelope"></i>
                        <strong>Email: </strong> support@email.com
                    </li>
                    <li>
                        <i class="icon-globe"></i>
                        <strong>Website:</strong> www.domain.com
                    </li>
                    <li>
                        <i class="icon-phone"></i>
                        <strong>Telefono:</strong> 631-409-3105
                    </li>
                </ul>
            </div>
            <!--End Contact Form-->

            <!--Important Links-->
            <div id="tweets" class="span3">
                <h4>Nosotros</h4>
                <div>
                    <ul class="arrow">
                        <li><a href="#">About Us</a></li>
                        <li><a href="#">Support</a></li>
                        <li><a href="#">Terms of Use</a></li>
                        <li><a href="#">Privacy Policy</a></li>
                        <li><a href="#">Copyright</a></li>
                        <li><a href="#">We are hiring</a></li>
                        <li><a href="#">Clients</a></li>
                        <li><a href="#">Blog</a></li>
                    </ul>
                </div>  
            </div>
            <!--Important Links-->
        </div>

    </div>
    <!--/row-fluid-->
</div>
<!--/container-->

</section>
<!--/bottom-->
<!--Footer-->
<footer id="footer">
    <div class="container">
        <div class="row-fluid">
            <div class="span5 cp">
               <!-- &copy; 2013 <a target="_blank" href="http://shapebootstrap.net/" title="Free Twitter Bootstrap WordPress Themes and HTML templates">ShapeBootstrap</a>. All Rights Reserved.-->
            </div>
            <!--/Copyright-->

            <div class="span6">
                <ul class="social pull-right">
                    <li><a href="#"><i class="icon-facebook"></i></a></li>
                    <li><a href="#"><i class="icon-twitter"></i></a></li>
                    <li><a href="#"><i class="icon-pinterest"></i></a></li>
                    <li><a href="#"><i class="icon-linkedin"></i></a></li>
                    <li><a href="#"><i class="icon-google-plus"></i></a></li>                       
                    <li><a href="#"><i class="icon-youtube"></i></a></li>
                    <li><a href="#"><i class="icon-tumblr"></i></a></li>                        
                    <li><a href="#"><i class="icon-dribbble"></i></a></li>
                    <li><a href="#"><i class="icon-rss"></i></a></li>
                    <li><a href="#"><i class="icon-github-alt"></i></a></li>
                    <li><a href="#"><i class="icon-instagram"></i></a></li>                   
                </ul>
            </div>

            <div class="span1">
                <a id="gototop" class="gototop pull-right" href="#"><i class="icon-angle-up"></i></a>
            </div>
            <!--/Goto Top-->
        </div>
    </div>
</footer>
<!--/Footer-->          


<g:javascript src="vendor/jquery-1.9.1.min.js" />
<g:javascript src="vendor/bootstrap.min.js" />
<g:javascript src="main.js" />
<g:javascript src="jquery.ba-cond.min.js" />
<g:javascript src="jquery.slitslider.js" />
		<r:layoutResources />
	</body>
</html>
