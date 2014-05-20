
<%@ page import="escuelaingles2.PeticionAlumno" %>
<%@ page import="escuelaingles2.Curso" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'peticionAlumno.label', default: 'PeticionAlumno')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
                <link rel="stylesheet" href="${resource(dir: 'css', file: 'style.css')}"> 
	</head>
	<body>
		<div class="container">
			<h1 class="especial">Calificaciones </h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table class="table table-bordered">
			<thead>
					<tr>
						<th><g:message code="peticionAlumno.alumno.label" default="Alumno" /></th>
					
						<th><g:message code="peticionAlumno.curso.label" default="Curso" /></th>
					
						<g:sortableColumn property="calificacion" title="${message(code: 'peticionAlumno.calificacion.label', default: 'Calificacion')}" />

						<th>Guardar</th>
					</tr>
				</thead>
				<tbody>
				<g:each in="${peticiones}" status="i" var="peticionAlumnoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td>${fieldValue(bean: peticionAlumnoInstance, field: "alumno")}</td>
					
						<td>${fieldValue(bean: peticionAlumnoInstance, field: "curso")}</td>
						<g:form action="guardarCalificacion" params="[peticionid:peticionAlumnoInstance.id, curso:idCurso]">
							<td><g:field type="number" name="calificacion" min="5" max="10" required="" value="${peticionAlumnoInstance?.calificacion}"/></td>
											
							<td><input type="submit" value="Guardar"></td>
						</g:form>
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
