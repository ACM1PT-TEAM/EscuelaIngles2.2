<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
	<meta name="layout" content="main"/>
	<style>
		@page {
		    size: 6in 4in;  /* width height */
		    margin: 0.25in;
		}
		body{
			font-family: "Times New Roman",Georgia,Serif;
		}
		
	</style>
</head>
<body>
  <section class="title">
    <div class="container">
      <div class="row-fluid">
        <div class="span6">
			<rendering:inlinePng bytes="${logo}" height="80px"/>
        </div>
      </div>
    </div>
  </section>
  <!-- / .title -->       

  <!-- Career -->
  <section id="career" class="container">
    <div class="center">
      <h2>Constancia de Nivel</h2>
      <p>El alumno <b>${nombre}</b> aprobo el curso de <b>${curso}</b> con una calificacion de <b>${calificacion}</b> </p>
    </div>

</section>
<!-- /Career -->

</body>
</html>
