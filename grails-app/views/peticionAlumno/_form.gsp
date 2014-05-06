<%@ page import="escuelaingles2.PeticionAlumno" %>



<div class="fieldcontain ${hasErrors(bean: peticionAlumnoInstance, field: 'estado', 'error')} ">
	<label for="estado">
		<g:message code="peticionAlumno.estado.label" default="Estado" />
		
	</label>
	<g:select name="estado" from="${peticionAlumnoInstance.constraints.estado.inList}" value="${peticionAlumnoInstance?.estado}" valueMessagePrefix="peticionAlumno.estado" noSelection="['': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: peticionAlumnoInstance, field: 'alumno', 'error')} required">
	<label for="alumno">
		<g:message code="peticionAlumno.alumno.label" default="Alumno" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="alumno" name="alumno.id" from="${escuelaingles2.Alumno.list()}" optionKey="id" required="" value="${peticionAlumnoInstance?.alumno?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: peticionAlumnoInstance, field: 'calificacion', 'error')} required">
	<label for="calificacion">
		<g:message code="peticionAlumno.calificacion.label" default="Calificacion" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="calificacion" type="number" value="${peticionAlumnoInstance.calificacion}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: peticionAlumnoInstance, field: 'curso', 'error')} required">
	<label for="curso">
		<g:message code="peticionAlumno.curso.label" default="Curso" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="curso" name="curso.id" from="${escuelaingles2.Curso.list()}" optionKey="id" required="" value="${peticionAlumnoInstance?.curso?.id}" class="many-to-one"/>
</div>

