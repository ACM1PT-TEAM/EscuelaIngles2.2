<%@ page import="escuelaingles2.Peticion" %>



<div class="fieldcontain ${hasErrors(bean: peticionInstance, field: 'dias', 'error')} required">
	<label for="dias">
		<g:message code="peticion.dias.label" default="Dias" />
		<span class="required-indicator">*</span>
	</label>
	
</div>

<div class="fieldcontain ${hasErrors(bean: peticionInstance, field: 'horarios', 'error')} required">
	<label for="horarios">
		<g:message code="peticion.horarios.label" default="Horarios" />
		<span class="required-indicator">*</span>
	</label>
	
</div>

<div class="fieldcontain ${hasErrors(bean: peticionInstance, field: 'nivelCurso', 'error')} ">
	<label for="nivelCurso">
		<g:message code="peticion.nivelCurso.label" default="Nivel Curso" />
		
	</label>
	<g:textField name="nivelCurso" value="${peticionInstance?.nivelCurso}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: peticionInstance, field: 'profesor', 'error')} required">
	<label for="profesor">
		<g:message code="peticion.profesor.label" default="Profesor" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="profesor" name="profesor.id" from="${escuelaingles2.Profesor.list()}" optionKey="id" required="" value="${peticionInstance?.profesor?.id}" class="many-to-one"/>
</div>

