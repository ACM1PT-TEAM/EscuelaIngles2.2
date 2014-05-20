
<%@ page import="escuelaingles2.Curso" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'curso.label', default: 'Curso')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
                 <link rel="stylesheet" href="${resource(dir: 'css', file: 'style.css')}"> 
	</head>
	<body>
		<div class="center">
			<h1 class="especial">Cursos del Profesor ${session.profesor}</h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table class="table table-bordered">
			<thead>
					<tr class="info">
					
						<g:sortableColumn property="nivelCurso" title="${message(code: 'curso.nivelCurso.label', default: 'Nivel Curso')}" />
					
						<g:sortableColumn property="dias" title="${message(code: 'curso.dias.label', default: 'Dias')}" />
					
						<g:sortableColumn property="horario" title="${message(code: 'curso.horario.label', default: 'Horario')}" />
									
						<th><g:message code="curso.profesor.label" default="Profesor" /></th>
					
						<th>Calificar Curso</th>

					</tr>
				</thead>
				<tbody>
				<g:each in="${lista}" status="i" var="cursoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td>${fieldValue(bean: cursoInstance, field: "nivelCurso")}</td>
					
						<td>${fieldValue(bean: cursoInstance, field: "dias")}</td>
					
						<td>${fieldValue(bean: cursoInstance, field: "horario")}</td>
					
						<td>${fieldValue(bean: cursoInstance, field: "profesor")}</td>

						<td><g:link action="calificarCurso" params="[idCurso: cursoInstance.id]">Calificar</g:link></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${cursoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
