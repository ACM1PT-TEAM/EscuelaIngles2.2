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
                <div class="span6" id="encabezado">
                    <h1>Cuenta Profesor</h1>
                </div>
                <div class="span6">
                    <ul class="breadcrumb pull-right">
                        <li><a href="${createLink(uri: '/')}">Inicio</a> <span class="divider">/</span></li>
                        <li class="active">Profesor</li>
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
                        <a class="opciones" href="${createLink(controller:'profesor',action:'edit',id:session.profesor.id)}">Modificar Cuenta</a>
                    </div>
                </div>
                <div class="widget-blog-item media">
                    <div class="media-body">
                        <a class="opciones" href="${createLink(controller:'profesor',action:'cursosProfesor')}">Cursos Actuales</a>
                    </div>
                </div>

                <div class="widget-blog-item media">
                    <div class="media-body">
                        <a class="opciones" href="${createLink(controller:'peticion',action:'create')}">Solicitar Curso</a>
                    </div>
                </div>

              <div class="widget-blog-item media">
                    <div class="media-body">
                        <a class="opciones" href="${createLink(controller:'peticionAlumno',action:'indice')}">Ver Solicitudes Alumnos</a>
                    </div>
                </div>
            </div>                        
        </div>
              <div class="gap"></div>

        </div>
    </div>
    <aside class="span4">
       <!-- <div class="widget search">
            <form>
                <input type="text" class="input-block-level" placeholder="Search">
            </form>
        </div>-->
        <!-- /.search -->

        <div class="widget widget-popular">
            <h2>Informacion del Profesor</h2>
            <div class="widget-blog-items">
	
					 <ul class="unstyled">
						<g:each in="${profe}" status="i" var="alumnoInstance">
					
						    <div class="widget-blog-item media">                   
						        <div class="media-body">
						            <h5>Nombre: ${fieldValue(bean: alumnoInstance, field: "nombre")}</h5>
						        </div>
						    </div>			

						    <div class="widget-blog-item media">                   
						        <div class="media-body">
						            <h5>Apellido Paterno: ${fieldValue(bean: alumnoInstance, field: "apellidoPaterno")}</h5>
						        </div>
						    </div>

						    <div class="widget-blog-item media">                   
						        <div class="media-body">
						            <h5>Apellido Materno: ${fieldValue(bean: alumnoInstance, field: "apellidoMaterno")}</h5>
						        </div>
						    </div>
                                                    <div class="widget-blog-item media">                   
						        <div class="media-body">
						            <h5>Correo Electronico: ${fieldValue(bean: alumnoInstance, field: "correoElectronico")}</h5>
						        </div>
						    </div>
                                                     <div class="widget-blog-item media">                   
						        <div class="media-body">
						            <h5>Contraseña: ${fieldValue(bean: alumnoInstance, field: "password")}</h5>
						        </div>
						    </div>                                                       
						    <div class="widget-blog-item media">                   
						        <div class="media-body">
									<h5>Telefono: ${fieldValue(bean: alumnoInstance, field: "telefono")}</h5>
						        </div>
						    </div>
						  </g:each>
                        </ul>               
            </div>                        
        </div>
        <!-- End Popular Posts -->        
    </aside>
</div>

</section>
</body>
</html>
