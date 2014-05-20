<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
<head>
	<meta name="layout" content="main"/>
    <title>Inicio | Escuela de Ingles ACM1PT</title>
</head>

<body>

    <!--Slider-->
    <section id="slide-show">
     <div id="slider" class="sl-slider-wrapper">

        <!--Slider Items-->    
        <div class="sl-slider">
            <!--Slider Item1-->
            <div class="sl-slide item1" data-orientation="horizontal" data-slice1-rotation="-25" data-slice2-rotation="-25" data-slice1-scale="2" data-slice2-scale="2">
                <div class="sl-slide-inner">
                    <div class="container">
                        <img class="pull-right" src="images/sample/slider/img1.png" alt="" />
                        <h2>Aprende ingles!</h2>
                        <h3 class="gap">No lo pienses más</h3>
                        <a class="btn btn-large btn-transparent" href="${createLink(uri: '/alumno/create')}">Inscribete ya</a>
                    </div>
                </div>
            </div>
            <!--/Slider Item1-->

            <!--Slider Item2-->
            <div class="sl-slide item2" data-orientation="vertical" data-slice1-rotation="10" data-slice2-rotation="-15" data-slice1-scale="1.5" data-slice2-scale="1.5">
                <div class="sl-slide-inner">
                    <div class="container">
                        <img class="pull-right" src="images/sample/slider/img2.png" alt="" />
                        <h2>¿Horarios complicados?</h2>
                        <h3 class="gap">Tenemos una gran variedad de horarios</h3>
                        <a class="btn btn-large btn-transparent" href="${createLink(uri: '/curso/indice')}">Conoce nuestros cursos</a>
                    </div>
                </div>
            </div>
            <!--Slider Item2-->

            <!--Slider Item3-->
            <div class="sl-slide item3" data-orientation="horizontal" data-slice1-rotation="3" data-slice2-rotation="3" data-slice1-scale="2" data-slice2-scale="1">
                <div class="sl-slide-inner">
                   <div class="container">
                    <img class="pull-right" src="images/sample/slider/img3.png" alt="" />
                    <h2>¿Eres profesor?</h2>
                    <h3 class="gap">Forma parte de nuestro equipo</h3>
                    <a class="btn btn-large btn-transparent" href="${createLink(uri: '/profesor/create')}">Impartir curso</a>
                </div>
            </div>
        </div>
        <!--Slider Item3-->

    </div>
    <!--/Slider Items-->

    <!--Slider Next Prev button-->
    <nav id="nav-arrows" class="nav-arrows">
        <span class="nav-arrow-prev"><i class="icon-angle-left"></i></span>
        <span class="nav-arrow-next"><i class="icon-angle-right"></i></span> 
    </nav>
    <!--/Slider Next Prev button-->

</div>
<!-- /slider-wrapper -->           
</section>
<!--/Slider-->

<!--Services-->
<section id="services">
    <div class="container">
        <div class="center gap">
            <h3>Beneficios</h3>
            <p class="lead">Algunas de las ventajas que ofrecemos son:</p>
        </div>

        <div class="row-fluid">
            <div class="span4" id="beneficios">
                <div class="media">
                    <div class="pull-left">
                        <i class="icon-globe icon-medium"></i>
                    </div>
                    <div class="media-body">
                        <h4 class="media-heading">Grupos Reducidos</h4>
                        <p>Entendemos las necesidades y dudas que pueden tener cada uno de nuestros alumnos, asi que nos enfocamos en trabajar en grupos de alumnos reducidos para que todos vayan a la par</p>
                    </div>
                </div>
            </div>            

            <div class="span4" id="beneficios">
                <div class="media">
                    <div class="pull-left">
                        <i class="icon-thumbs-up-alt icon-medium"></i>
                    </div>
                    <div class="media-body">
                        <h4 class="media-heading">Variedad de Horarios</h4>
                        <p>En el mundo actual es muy dificil tomar clases en un solo horario, ya sea muy temprano o muy tarde, sin embargo puede que no nos guste despertantos muy temprano o desvelarnos. Por lo que contamos con una gran variedad de horarios disponibles</p>
                    </div>
                </div>
            </div>            

            <div class="span4" id="beneficios">
                <div class="media">
                    <div class="pull-left">
                        <i class="icon-leaf icon-medium icon-rounded"></i>
                    </div>
                    <div class="media-body">
                        <h4 class="media-heading">Profesores Altamente Certificados</h4>
                        <p>Lo que ofrecemos es un nuevo metodo, enfocandonos mas en la conversacion para que el alumno pierda el miedo desde un inicio. Para esto contamos con una planta de profesores, los cuales estan certificados y con profesores nativos para que el alumno tenga la mayor calidad de aprendizaje posible. </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!--/Services-->

<section id="clients" class="main">
    <div class="container">
        <div class="row-fluid">
            <div class="span2">
                <div class="clearfix">
                    <h4 class="pull-left">Certificaciones</h4>
                    <div class="pull-right">
                        <a class="prev" href="#myCarousel" data-slide="prev"><i class="icon-angle-left icon-large"></i></a> <a class="next" href="#myCarousel" data-slide="next"><i class="icon-angle-right icon-large"></i></a>
                    </div>
                </div>
                <p>Ofrecemos algunas de las siguientes certificiaciones.</p>
            </div>
            <div class="span10">
                <div id="myCarousel" class="carousel slide clients">
                  <!-- Carousel items -->
                  <div class="carousel-inner">
                    <div class="active item">
                        <div class="row-fluid">
                            <ul class="thumbnails">
                                <li class="span3"><a href="#"><img src="images/sample/clients/toefl.gif"></a></li>
                                <li class="span3"><a href="#"><img src="images/sample/clients/toeic.gif"></a></li>
                                <li class="span3"><a href="#"><img src="images/sample/clients/PET.jpg"></a></li>
                                <li class="span3"><a href="#"><img src="images/sample/clients/KET.jpg"></a></li>
                            </ul>
                        </div>
                    </div>

                    <div class="item">
                        <div class="row-fluid">
                            <ul class="thumbnails">
                                <li class="span3"><a href="#"><img src="images/sample/clients/KET.jpg"></a></li>
                                <li class="span3"><a href="#"><img src="images/sample/clients/PET.jpg"></a></li>
                                <li class="span3"><a href="#"><img src="images/sample/clients/toeic.gif"></a></li>
                                <li class="span3"><a href="#"><img src="images/sample/clients/toefl.gif"></a></li>
                            </ul>
                        </div>
                    </div>

                    <!--<div class="item">
                        <div class="row-fluid">
                            <ul class="thumbnails">
                                <li class="span3"><a href="#"><img src="images/sample/clients/client1.png"></a></li>
                                <li class="span3"><a href="#"><img src="images/sample/clients/client2.png"></a></li>
                                <li class="span3"><a href="#"><img src="images/sample/clients/client3.png"></a></li>
                                <li class="span3"><a href="#"><img src="images/sample/clients/client4.png"></a></li>
                            </ul>
                        </div>
                    </div>-->
                </div>
                <!-- /Carousel items -->

            </div>
        </div>
    </div>
</div>
</section>


<g:javascript src="vendor/jquery-1.9.1.min.js" />
<g:javascript src="vendor/bootstrap.min.js" />
<g:javascript src="main.js" />
<!-- Required javascript files for Slider -->
<g:javascript src="jquery.ba-cond.min.js" />
<g:javascript src="jquery.slitslider.js" />
<!-- /Required javascript files for Slider -->

<!-- SL Slider -->
<script type="text/javascript"> 
$(function() {
    var Page = (function() {

        var $navArrows = $( '#nav-arrows' ),
        slitslider = $( '#slider' ).slitslider( {
            autoplay : true
        } ),

        init = function() {
            initEvents();
        },
        initEvents = function() {
            $navArrows.children( ':last' ).on( 'click', function() {
                slitslider.next();
                return false;
            });

            $navArrows.children( ':first' ).on( 'click', function() {
                slitslider.previous();
                return false;
            });
        };

        return { init : init };

    })();

    Page.init();
});
</script>
<!-- /SL Slider -->
</body>
</html>
