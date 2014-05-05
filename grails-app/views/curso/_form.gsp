<%@ page import="escuelaingles2.Curso" %>



<div class="fieldcontain ${hasErrors(bean: cursoInstance, field: 'alumnos', 'error')} ">
	<label for="alumnos">
		<g:message code="curso.alumnos.label" default="Alumnos" />
		
	</label>
	<g:select name="alumnos" from="${escuelaingles2.Alumno.list()}" multiple="multiple" optionKey="id" size="5" value="${cursoInstance?.alumnos*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: cursoInstance, field: 'profesor', 'error')} ">
	<label for="profesor">
		<g:message code="curso.profesor.label" default="Profesor" />
		
	</label>
	<g:select id="profesor" name="profesor.id" from="${escuelaingles2.Profesor.list()}" optionKey="id" value="${cursoInstance?.profesor?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: cursoInstance, field: 'aceptado', 'error')} ">
	<label for="aceptado">
		<g:message code="curso.aceptado.label" default="Aceptado" />
		
	</label>
	<g:checkBox name="aceptado" value="${cursoInstance?.aceptado}" />
</div>

<div class="fieldcontain ${hasErrors(bean: cursoInstance, field: 'activo', 'error')} ">
	<label for="activo">
		<g:message code="curso.activo.label" default="Activo" />
		
	</label>
	<g:checkBox name="activo" value="${cursoInstance?.activo}" />
</div>

<div class="fieldcontain ${hasErrors(bean: cursoInstance, field: 'dias', 'error')} required">
	<label for="dias">
		<g:message code="curso.dias.label" default="Dias" />
		<span class="required-indicator">*</span>
	</label>
	
</div>

<div class="fieldcontain ${hasErrors(bean: cursoInstance, field: 'horario', 'error')} ">
	<label for="horario">
		<g:message code="curso.horario.label" default="Horario" />
		
	</label>
	<g:textField name="horario" value="${cursoInstance?.horario}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: cursoInstance, field: 'nivelCurso', 'error')} ">
	<label for="nivelCurso">
		<g:message code="curso.nivelCurso.label" default="Nivel Curso" />
		
	</label>
	<g:textField name="nivelCurso" value="${cursoInstance?.nivelCurso}"/>
</div>

