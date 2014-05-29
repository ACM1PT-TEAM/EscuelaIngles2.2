<%@ page import="escuelaingles2.Peticion" %>

<div>
    <p class="instrucciones">Seleccione los campos</p>
</div>

<div class="fieldcontain ${hasErrors(bean: peticionInstance, field: 'nivelCurso', 'error')} "id="peticion">
	<label for="nivelCurso">
		<g:message code="peticion.nivelCurso.label" default="Nivel Curso" />
		
	</label>
	<g:select name="nivelCurso" from="${peticionInstance.constraints.nivelCurso.inList}" value="${peticionInstance?.nivelCurso}" valueMessagePrefix="peticion.nivelCurso" noSelection="['': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: peticionInstance, field: 'dias', 'error')} "id="peticion">
	<label for="dias">
            <g:message code="peticion.dias.label" default="Dias" /></br>
            <!--<span style="font-size:13px"style="font-style:italic">Deje presionado 'Ctrl', para seleccionar </br>más de una opcion</span>-->
	</label>
        <!--<select name="dias" size="6"multiple="">
            <option>Lunes</option>
            <option>Martes</option>
            <option>Miercoles</option>
            <option>Jueves</option>
            <option>Viernes</option>
            <option>Sabado
        </select>-->
	<g:select name="dias" from="${peticionInstance.constraints.dias.inList}" value="${peticionInstance?.dias}" valueMessagePrefix="peticion.dias" noSelection="['': '']" />
</div>

<div class="fieldcontain ${hasErrors(bean: peticionInstance, field: 'horarios', 'error')} "id="peticion">
	<label for="horarios">
		<g:message code="peticion.horarios.label" default="Horarios" /></br>
		<span style="font-size:13px"style="font-style:italic">Deje presionado 'Ctrl', para seleccionar </br>más de una opcion</span>
	</label>
        <select name="horarios" size="6"multiple="">
            <option>7-9 am</option>
            <option>9-11 am</option>
            <option>11-13 pm</option>
            <option>13-15 pm</option>
            <option>15-17 pm</option>
            <option>17-19 pm</option>
            <option>19-21 pm</option>
        </select>
	<!--<g:select name="horarios" from="${peticionInstance.constraints.horarios.inList}" value="${peticionInstance?.horarios}" valueMessagePrefix="peticion.horarios" noSelection="['': '']"/>-->
</div>

<div class="fieldcontain ${hasErrors(bean: peticionInstance, field: 'profesor', 'error')} required"id="peticion">
	<label for="profesor">
		<g:message code="peticion.profesor.label" default="Profesor" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="profesor" name="profesor.id" from="${escuelaingles2.Profesor.get(session.profesor.id)}" optionKey="id" required="" value="${peticionInstance?.profesor?.id}" class="many-to-one"/>
</div>

