<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
<head>
	<meta name="layout" content="main"/>
    <title>Inicio | Escuela de Ingles ACM1PT</title>
</head>

<body>
 <section class="title">
        <div class="container">
            <div class="row-fluid">
                <div class="span6">
                    <h1>Cuenta Administrador</h1>
                </div>
                <div class="span6">
                    <ul class="breadcrumb pull-right">
                        <li><a href="${createLink(uri: '/')}">Inicio</a> <span class="divider">/</span></li>
                        <li class="active">Administrador</li>
                    </ul>
                </div>
            </div>
        </div>
    </section>
    <!-- / .title -->         

    <section id="about-us" class="container main">
        <div class="row-fluid">
            <div class="span8">
                <div class="blog">
 <div class="widget widget-popular">
            <h2 class="menu_cuenta">Menu Opciones</h2>
            <div class="widget-blog-items">
                <div class="widget-blog-item media">                   
                    <div class="media-body">
                        <a class="opciones"href="${createLink(controller:'usuario',action:'edit',id:session.user.id)}">Modificar Cuenta</a>
                    </div>
                </div>

                <div class="widget-blog-item media">
                    <div class="media-body">
                        <a class="opciones" href="${createLink(controller:'peticion',action:'index')}">Aceptar Peticiones Profesores</a>
                    </div>
                </div>

                <div class="widget-blog-item media">
                    <div class="media-body">
                        <a class="opciones" href="${createLink(controller:'peticionAlumno',action:'index')}">Ver Calificaciones</a>
                    </div>
                </div>
            </div>                        
        </div>
              <div class="gap"></div>

        </div>
    </div>
</div>

</section>
</body>
</html>
