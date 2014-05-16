
<%@ page contentType="text/html;charset=UTF-8" %>

<html>
    <head>
        <meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'alumno.label', default: 'Alumno')}" />
		<title>Inicio | Alumno</title>
                <link rel="stylesheet" href="${resource(dir: 'css', file: 'style.css')}">
    </head>
    <body>
        <div class="nav" role="navigation" id="menu_opciones">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}">Principal</a></li>
                <li><g:link class="create"controller="peticionAlumno" action="create">Inscribir Curso</g:link></li>
            </ul>
	</div>
        <div id="menu-lateral" class="content scaffold-show" role="main">
            <h1>Bienvenido a tu cuenta</h1>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <div class="menu">
                 <ol class="opciones">
                    <h2 class="show-h2" id="izquierdo">Menu Opciones</h2>
                    <h3 class="show-h3">Cursos</h3>
                    <li class="lista" type="disc"><g:link controller="alumno" action="principal_alumno" class="opcion">Obtener Constancia</g:link></li>
                    <li class="lista" type="disc" id="ultimo"><g:link controller="alumno" action="principal_alumno" class="opcion">Tus Cursos</g:link></li>
                    <h3 class="show-h3">Cuenta</h3>                    
                    <li class="lista" type="disc"><g:link controller="alumno" action="show"class="opcion">Ver cuenta</g:link></li>
                    <li class="lista" type="disc" id="ultimo"><g:link controller="alumno" action="edit" class="opcion">Modificar cuenta</g:link></li>
                 </ol>
            </div>
                <p class="bienvenida">Bienvenido a tu cuenta de usuario, aqui podrás administrar toda la información 
                referente a tu cuenta, así como solicitar cursos que desees impartir. </p>
        </div>
               
    </body>
</html>
