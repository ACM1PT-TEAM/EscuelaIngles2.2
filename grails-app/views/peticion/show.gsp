
<%@ page import="escuelaingles2.Peticion" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'peticion.label', default: 'Peticion')}" />
		<title>Petición Curso</title>
                <link rel="stylesheet" href="${resource(dir: 'css', file: 'style.css')}">
	</head>
	<body>
		<!--<a href="#show-peticion" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>-->
		<div id="show-peticion" class="content scaffold-show" role="main">
			<h1 class="especial">Petición Curso</h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list peticion" id="info">
                                <h2>Datos Petición</h2>
				<g:if test="${peticionInstance?.nivelCurso}">
				<li class="fieldcontain">
					<span id="nivelCurso-label" class="property-label"><g:message code="peticion.nivelCurso.label" default="Nivel Curso" /></span>
					
						<span class="property-value" aria-labelledby="nivelCurso-label"><g:fieldValue bean="${peticionInstance}" field="nivelCurso"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${peticionInstance?.dias}">
				<li class="fieldcontain">
					<span id="dias-label" class="property-label"><g:message code="peticion.dias.label" default="Dias" /></span>
					
						<span class="property-value" aria-labelledby="dias-label"><g:fieldValue bean="${peticionInstance}" field="dias"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${peticionInstance?.horarios}">
				<li class="fieldcontain">
					<span id="horarios-label" class="property-label"><g:message code="peticion.horarios.label" default="Horarios" /></span>
					
						<span class="property-value" aria-labelledby="horarios-label"><g:fieldValue bean="${peticionInstance}" field="horarios"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${peticionInstance?.profesor}">
				<li class="fieldcontain">
					<span id="profesor-label" class="property-label"><g:message code="peticion.profesor.label" default="Profesor" /></span>
					
						<span class="property-value" aria-labelledby="profesor-label"><g:link controller="profesor" action="show" id="${peticionInstance?.profesor?.id}">${peticionInstance?.profesor?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:peticionInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="peticion" action="aceptarPeticion" resource="${peticionInstance}"><g:message code="Aceptar Peticion"/></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'Borrar Peticion', default: 'Borrar Peticion')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
