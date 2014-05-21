
<%@ page import="escuelaingles2.Profesor" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'profesor.label', default: 'Profesor')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
                <script src="${resource(dir:'js', file:'video.js')}"></script>
                <script>
                        videojs.options.flash.swf = "${resource(dir:'js', file:'video-js.swf')}"
                </script>
                <link rel="stylesheet" href="${resource(dir:'css', file:'video-js.css')}"/>
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
            <div class="widget widget-popular">
                <div class="widget-blog-items">
                  <h5>Video Profesor:</h5></br>
                  <video id="example_video_1" class="video-js vjs-default-skin" controls preload="auto" width="640" height="264" data-setup='{"example_option":true}'>
                    <source src="${resource(dir:'videos',file:profesorInstance?.video)}" type='video/mp4' />
                  </video>                      
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

        <
        <!-- End Popular Posts -->        
    </aside>
</div>

</section>			
		</div>
	</body>
</html>
