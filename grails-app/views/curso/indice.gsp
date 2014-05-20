
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
			<h1 class="especial">Cursos Disponibles</h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<div class="table-responsive">
			<table class="table table-bordered" id="peticiones">
			<thead>
					<tr>
					
						<g:sortableColumn property="nivelCurso" title="${message(code: 'curso.nivelCurso.label', default: 'Nivel Curso')}" />
					
						<g:sortableColumn property="dias" title="${message(code: 'curso.dias.label', default: 'Dias')}" />
					
						<g:sortableColumn property="horario" title="${message(code: 'curso.horario.label', default: 'Horario')}" />
									
						<th><g:message code="curso.profesor.label" default="Profesor" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${lista}" status="i" var="cursoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${cursoInstance.id}">${fieldValue(bean: cursoInstance, field: "nivelCurso")}</g:link></td>
					
						<td>${fieldValue(bean: cursoInstance, field: "dias")}</td>
					
						<td>${fieldValue(bean: cursoInstance, field: "horario")}</td>
					
						<td>${fieldValue(bean: cursoInstance, field: "profesor")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
		</div>			
		</div>
	</body>
</html>
