
<%@ page import="escuelaingles2.Peticion" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'peticion.label', default: 'Peticion')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
                <link rel="stylesheet" href="${resource(dir: 'css', file: 'style.css')}">
	</head>
	<body>
		<div class="center">
			<h1 class="especial">Peticiones Profesores</h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table class="table table-bordered" id="peticiones">
			<thead>
					<tr>
					
						<g:sortableColumn property="nivelCurso" title="${message(code: 'peticion.nivelCurso.label', default: 'Nivel Curso')}" />
					
						<g:sortableColumn property="dias" title="${message(code: 'peticion.dias.label', default: 'Dias')}" />
					
						<g:sortableColumn property="horarios" title="${message(code: 'peticion.horarios.label', default: 'Horarios')}" />
					
						<th><g:message code="peticion.profesor.label" default="Profesor" /></th>

						<th>Aceptar Curso</th>

						<th>Rechazar Curso</th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${peticionInstanceList}" status="i" var="peticionInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${peticionInstance.id}">${fieldValue(bean: peticionInstance, field: "nivelCurso")}</g:link></td>
					
						<td>${fieldValue(bean: peticionInstance, field: "dias")}</td>
					
						<td>${fieldValue(bean: peticionInstance, field: "horarios")}</td>
					
						<td>${fieldValue(bean: peticionInstance, field: "profesor")}</td>						

						<td><g:link action="aceptarPeticion" id="${peticionInstance.id}">Aceptar</g:link></td>
						<td><g:link action="delete" id="${peticionInstance.id}">Rechazar</g:link></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${peticionInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
