
<%@ page import="escuelaingles2.Profesor" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'profesor.label', default: 'Profesor')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="center" role="main">
			<h1>${profesorInstance}</h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
 <section id="about-us" class="container main">
        <div class="row-fluid">
            <div class="span8">
                <div class="blog">
 <div class="widget widget-popular">
            <h2>Datos Profesor</h2>
            <div class="widget-blog-items">
                <div class="widget-blog-item media">
                    <div class="media-body">
                        <h5>Nombre: ${profesorInstance?.nombre}</h5>
                    </div>
                </div>
            </div>                        
            <div class="widget-blog-items">
                <div class="widget-blog-item media">
                    <div class="media-body">
                        <h5>Apellido Paterno: ${profesorInstance?.apellidoPaterno}</h5>
                    </div>
                </div>
            </div>                        
            <div class="widget-blog-items">
                <div class="widget-blog-item media">
                    <div class="media-body">
                        <h5>Apellido Materno: ${profesorInstance?.apellidoMaterno}</h5>
                    </div>
                </div>
            </div>                        
            <div class="widget-blog-items">
                <div class="widget-blog-item media">
                    <div class="media-body">
                        <h5>Correo Electronico: ${profesorInstance?.correoElectronico}</h5>
                    </div>
                </div>
            </div>	
        </div>


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
            <h2>Video Profesor</h2>
            <div class="widget-blog-items">
	
					 <ul class="unstyled">
											<iframe width="560" height="315" src="//www.youtube.com/embed/${profesorInstance?.video.substring(profesorInstance?.video.indexOf('=')+1,profesorInstance?.video.length())}" frameborder="0" allowfullscreen></iframe>
                        </ul>               
            </div>                        
        </div>
        <!-- End Popular Posts -->        
    </aside>
</div>

</section>			
		</div>
	</body>
</html>
