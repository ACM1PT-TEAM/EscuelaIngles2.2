
<%@ page import="escuelaingles2.Curso" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'curso.label', default: 'Curso')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
                <link rel="stylesheet" href="${resource(dir: 'css', file: 'style.css')}">
	</head>
	<body class="listas">
		<a href="#list-curso" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation" id="menu_opciones">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}">INICIO</a></li>
				<!--<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>-->
			</ul>
		</div>
		<div id="list-curso" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<th><g:message code="curso.profesor.label" default="Profesor" /></th>
					
						<!--<g:sortableColumn property="activo" title="${message(code: 'curso.activo.label', default: 'Activo')}" />-->
					
						<g:sortableColumn property="dias" title="${message(code: 'curso.dias.label', default: 'Dias')}" />
					
						<g:sortableColumn property="horario" title="${message(code: 'curso.horario.label', default: 'Horario')}" />
					
						<g:sortableColumn property="nivelCurso" title="${message(code: 'curso.nivelCurso.label', default: 'Nivel Curso')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${cursoInstanceList}" status="i" var="cursoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${cursoInstance.id}">${fieldValue(bean: cursoInstance, field: "profesor")}</g:link></td>
					
						<td><g:formatBoolean boolean="${cursoInstance.aceptado}" /></td>
					
						<td><g:formatBoolean boolean="${cursoInstance.activo}" /></td>
					
						<td>${fieldValue(bean: cursoInstance, field: "dias")}</td>
					
						<td>${fieldValue(bean: cursoInstance, field: "horario")}</td>
					
						<td>${fieldValue(bean: cursoInstance, field: "nivelCurso")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${cursoInstanceCount ?: 0}" />
			</div>
		</div>
                
<!-- Registro form -->
<div class="modal hide fade in" id="registroForm" aria-hidden="false">
    <div class="modal-header">
        <i class="icon-remove" data-dismiss="modal" aria-hidden="true"></i>
        <h4>Registro</h4>
    </div>
    <!--Modal Body-->
    <div class="modal-body">
        <form class="form-inline">
            <ul>
                <a><g:link controller="profesor" class="boton" action="create">Profesor</g:link></a>
                <a><g:link controller="alumno" class="boton" action="create">Alumno</g:link></a>
            </ul>
        </form>
    </div>
    <!--/Modal Body-->
 </div>
 <!--  /Registro form -->                        
                        
<!--  Login form -->
<div class="modal hide fade in" id="loginForm" aria-hidden="false">
    <div class="modal-header">
        <i class="icon-remove" data-dismiss="modal" aria-hidden="true"></i>
        <h4>Login Form</h4>
    </div>
    <!--Modal Body-->
    <div class="modal-body">
        <form class="form-inline" action="index.html" method="post" id="form-login">
            <input type="text" class="input-small" placeholder="Email">
            <input type="password" class="input-small" placeholder="Password">
            <label class="checkbox">
                <input type="checkbox"> Recordarme
            </label>
            <button type="submit" class="btn btn-primary">Sign in</button>
        </form>
        <a href="#">Olvidaste tu contraseña?</a>
    </div>
    <!--/Modal Body-->
</div>
<!--  /Login form -->


	</body>
</html>
