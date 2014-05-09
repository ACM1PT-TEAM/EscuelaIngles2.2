<%@ page import="escuelaingles2.Alumno" %>


<div>
    <p class="instrucciones">Ingrese sus datos</p>
</div>


<div class="fieldcontain ${hasErrors(bean: alumnoInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="alumno.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" required="" value="${alumnoInstance?.nombre}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: alumnoInstance, field: 'apellidoPaterno', 'error')} required">
	<label for="apellidoPaterno">
		<g:message code="alumno.apellidoPaterno.label" default="Apellido Paterno" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="apellidoPaterno" required="" value="${alumnoInstance?.apellidoPaterno}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: alumnoInstance, field: 'apellidoMaterno', 'error')} required">
	<label for="apellidoMaterno">
		<g:message code="alumno.apellidoMaterno.label" default="Apellido Materno" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="apellidoMaterno" required="" value="${alumnoInstance?.apellidoMaterno}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: alumnoInstance, field: 'telefono', 'error')} ">
	<label for="telefono">
		<g:message code="alumno.telefono.label" default="Telefono" />
		
	</label>
	<g:textField name="telefono" value="${alumnoInstance?.telefono}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: alumnoInstance, field: 'correoElectronico', 'error')} required">
	<label for="correoElectronico">
		<g:message code="alumno.correoElectronico.label" default="Correo Electronico" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="correoElectronico" required="" value="${alumnoInstance?.correoElectronico}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: alumnoInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="alumno.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="password" name="password" maxlength="15" required="" value="${alumnoInstance?.password}"/>
</div>

<!--<div class="fieldcontain ${hasErrors(bean: alumnoInstance, field: 'peticiones', 'error')} ">
	<label for="peticiones">
		<g:message code="alumno.peticiones.label" default="Peticiones" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${alumnoInstance?.peticiones?}" var="p">
    <li><g:link controller="peticionAlumno" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="peticionAlumno" action="create" params="['alumno.id': alumnoInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'peticionAlumno.label', default: 'PeticionAlumno')])}</g:link>
</li>
</ul>

</div>-->

<div class="fieldcontain ${hasErrors(bean: alumnoInstance, field: 'tipoUsuario', 'error')} ">
	<label for="tipoUsuario">
		<g:message code="alumno.tipoUsuario.label" default="Tipo Usuario" />
		
	</label>
        <select name="tipoUsuario" size="2">
            <option>Profesor</option>
            <option>Alumno</option> 
        </select>
	<!--<g:textField name="tipoUsuario" value="${alumnoInstance?.tipoUsuario}"/>-->
</div>

