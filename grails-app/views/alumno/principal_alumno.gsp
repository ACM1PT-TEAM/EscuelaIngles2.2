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
                    <h1>Cuenta Alumno</h1>
                </div>
                <div class="span6">
                    <ul class="breadcrumb pull-right">
                        <li><a href="${createLink(uri: '/')}">Inicio</a> <span class="divider">/</span></li>
                        <li class="active">Alumno</li>
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
            <h2>Menu Opciones</h2>
            <div class="widget-blog-items">
                <div class="widget-blog-item media">                   
                    <div class="media-body">
                        <a href="${createLink(controller:'alumno',action:'edit',id:session.alumno.id)}"><h5>Modificar Cuenta</h5></a>
                    </div>
                </div>

                <div class="widget-blog-item media">
                    <div class="media-body">
                        <a href="${createLink(controller:'peticionAlumno',action:'create')}"><h5>Inscribir Curso</h5></a>
                    </div>
                </div>

                <div class="widget-blog-item media">
                    <div class="media-body">
                        <a href="#"><h5>Cursos Pasados</h5></a>
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
            <h2>Informacion del Alumno</h2>
            <div class="widget-blog-items">
	
					 <ul class="unstyled">
						<g:each in="${alumno}" status="i" var="alumnoInstance">
					
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
