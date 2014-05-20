<%@ page import="escuelaingles2.PeticionAlumno" %>

<div>
    <p class="instrucciones">Seleccione los campos</p>
</div>

<div class="fieldcontain ${hasErrors(bean: peticionAlumnoInstance, field: 'alumno', 'error')} required">
	<label for="alumno">
		<g:message code="peticionAlumno.alumno.label" default="Alumno" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="alumno" name="alumno.id" from="${escuelaingles2.Alumno.get(session.alumno.id)}" optionKey="id" required="" value="${peticionAlumnoInstance?.alumno?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: peticionAlumnoInstance, field: 'curso', 'error')} required">
	<label for="curso">
		<g:message code="peticionAlumno.curso.label" default="Curso" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="curso" name="curso.id" from="${escuelaingles2.Curso.list()}" optionKey="id" required="" value="${peticionAlumnoInstance?.curso?.id}" class="many-to-one"/>
</div>

