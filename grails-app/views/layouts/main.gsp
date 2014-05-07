<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
	<head>
		<g:layoutHead/>
		<title><g:layoutTitle default="Escuela de Ingles | ACM1PT"/></title>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name="description" content="">
		<meta name="viewport" content="width=device-width">

		<link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap.min.css')}">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap-responsive.min.css')}">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'font-awesome.min.css')}">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'main.css')}">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'sl-slide.css')}">

		<script src="js/vendor/modernizr-2.6.2-respond-1.1.0.min.js"></script>

		<!-- Le fav and touch icons -->
		<link rel="shortcut icon" href="images/ico/favicon.ico">
		<link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/apple-touch-icon-144-precomposed.png">
		<link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/apple-touch-icon-114-precomposed.png">
		<link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/ico/apple-touch-icon-72-precomposed.png">
		<link rel="apple-touch-icon-precomposed" href="images/ico/apple-touch-icon-57-precomposed.png">
		<g:javascript library="application"/>		
		<r:layoutResources />
	</head>
	<body>
		<g:layoutBody/>
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
		                    <li><g:link controller="curso" action="index">Cursos</g:link></li>
                                    <li class="registro">
		                        <a data-toggle="modal" href="#registroForm">Registro</a>
		                    </li>
		                    <li class="login">
		                        <a data-toggle="modal" href="#loginForm"><i class="icon-lock"></i></a>
		                    </li>
		                </ul>        
		            </div><!--/.nav-collapse-->
		        </div>
		    </div>
		</header>
	</body>
</html>
