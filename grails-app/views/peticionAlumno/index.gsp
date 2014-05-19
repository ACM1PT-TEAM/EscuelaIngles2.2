
<%@ page import="escuelaingles2.PeticionAlumno" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'peticionAlumno.label', default: 'PeticionAlumno')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="center">
			<h1>Calificacion Alumnos</h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table class="table table-bordered">
			<thead>
					<tr>
					
						<g:sortableColumn property="estado" title="${message(code: 'peticionAlumno.estado.label', default: 'Estado')}" />
					
						<g:sortableColumn property="calificacion" title="${message(code: 'peticionAlumno.calificacion.label', default: 'Calificacion')}" />
					
						<th><g:message code="peticionAlumno.alumno.label" default="Alumno" /></th>
					
						<th><g:message code="peticionAlumno.curso.label" default="Curso" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${peticionAlumnoInstanceList}" status="i" var="peticionAlumnoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${peticionAlumnoInstance.id}">${fieldValue(bean: peticionAlumnoInstance, field: "estado")}</g:link></td>
					
						<td>${fieldValue(bean: peticionAlumnoInstance, field: "calificacion")}</td>
					
						<td>${fieldValue(bean: peticionAlumnoInstance, field: "alumno")}</td>
					
						<td>${fieldValue(bean: peticionAlumnoInstance, field: "curso")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${peticionAlumnoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
