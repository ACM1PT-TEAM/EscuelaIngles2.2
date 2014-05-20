<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
<head>
    <meta name="layout" content="main"/>
    <title>Inicio | Escuela de Ingles ACM1PT</title>
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'style.css')}">
    
</head>

<body>
 <section class="title">
        <div class="container">
            <div class="row-fluid">
                <div class="span6">
                    <h1 class="especial_2">Cursos Pasados</h1>
                </div>
                <div class="span6">
                    <ul class="breadcrumb pull-right">
                        <li><a href="${createLink(uri: '/')}">Inicio</a> <span class="divider">/</span></li>
                        <li class="active">Alumno</li>
                    </ul>
                </div>
            </div>
        </div>
    </section>
    <!-- / .title -->         

		<div class="center">
			<h1 class="especial">Cursos Pasados</h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<div class="table-responsive" id="cursos_pasados">
			<table class="table table-bordered">
			<thead>
					<tr>					
						<th>Cursos</th>
					
						<th>Calificacion</th>					

						<th>Constancia</th>
					</tr>
				</thead>
				<tbody>
				<g:each in="${peticiones}" status="i" var="cursoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${cursoInstance.id}">${cursoInstance}</g:link></td>
					
						<td>${fieldValue(bean: cursoInstance, field: "calificacion")}</td>					

						<g:if test="${cursoInstance.calificacion>5}">
							<td><g:link action="renderFormPDF" params="[nombre:session.alumno, curso:cursoInstance.cursoNombre(), calificacion:cursoInstance.calificacion]">Generar Constancia</g:link></td>					
						</g:if>
					</tr>
				</g:each>
				</tbody>
			</table>
		</div>			
		</div>
	</body>
</html>
