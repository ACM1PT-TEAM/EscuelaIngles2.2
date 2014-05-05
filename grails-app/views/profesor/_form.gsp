<%@ page import="escuelaingles2.Profesor" %>



<div class="fieldcontain ${hasErrors(bean: profesorInstance, field: 'correoElectronico', 'error')} required">
	<label for="correoElectronico">
		<g:message code="profesor.correoElectronico.label" default="Correo Electronico" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="correoElectronico" required="" value="${profesorInstance?.correoElectronico}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: profesorInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="profesor.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="password" name="password" maxlength="15" required="" value="${profesorInstance?.password}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: profesorInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="profesor.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" required="" value="${profesorInstance?.nombre}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: profesorInstance, field: 'apellidoPaterno', 'error')} required">
	<label for="apellidoPaterno">
		<g:message code="profesor.apellidoPaterno.label" default="Apellido Paterno" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="apellidoPaterno" required="" value="${profesorInstance?.apellidoPaterno}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: profesorInstance, field: 'apellidoMaterno', 'error')} required">
	<label for="apellidoMaterno">
		<g:message code="profesor.apellidoMaterno.label" default="Apellido Materno" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="apellidoMaterno" required="" value="${profesorInstance?.apellidoMaterno}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: profesorInstance, field: 'telefono', 'error')} ">
	<label for="telefono">
		<g:message code="profesor.telefono.label" default="Telefono" />
		
	</label>
	<g:textField name="telefono" value="${profesorInstance?.telefono}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: profesorInstance, field: 'video', 'error')} ">
	<label for="video">
		<g:message code="profesor.video.label" default="Video" />
		
	</label>
	<g:textField name="video" value="${profesorInstance?.video}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: profesorInstance, field: 'constancia', 'error')} ">
	<label for="constancia">
		<g:message code="profesor.constancia.label" default="Constancia" />
		
	</label>
	<g:textField name="constancia" value="${profesorInstance?.constancia}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: profesorInstance, field: 'cursos', 'error')} ">
	<label for="cursos">
		<g:message code="profesor.cursos.label" default="Cursos" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${profesorInstance?.cursos?}" var="c">
    <li><g:link controller="curso" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="curso" action="create" params="['profesor.id': profesorInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'curso.label', default: 'Curso')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: profesorInstance, field: 'peticiones', 'error')} ">
	<label for="peticiones">
		<g:message code="profesor.peticiones.label" default="Peticiones" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${profesorInstance?.peticiones?}" var="p">
    <li><g:link controller="peticion" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="peticion" action="create" params="['profesor.id': profesorInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'peticion.label', default: 'Peticion')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: profesorInstance, field: 'tipoUsuario', 'error')} ">
	<label for="tipoUsuario">
		<g:message code="profesor.tipoUsuario.label" default="Tipo Usuario" />
		
	</label>
	<g:textField name="tipoUsuario" value="${profesorInstance?.tipoUsuario}"/>
</div>

