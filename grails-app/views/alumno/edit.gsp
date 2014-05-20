<%@ page import="escuelaingles2.Alumno" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'alumno.label', default: 'Alumno')}" />
		<title>Modificar Cuenta</title>
                <link rel="stylesheet" href="${resource(dir: 'css', file: 'style.css')}">
	</head>
	<body>
		<div class="center">
			<h1 class="especial">Modificar Cuenta	</h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${alumnoInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${alumnoInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form url="[resource:alumnoInstance, action:'update']" method="PUT" >
				<g:hiddenField name="version" value="${alumnoInstance?.version}" />
				<fieldset class="form" id="registro">
					<g:render template="form"/>
				</fieldset>
				<fieldset class="buttons">
					<g:actionSubmit class="save" action="update" value="Actualizar" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
