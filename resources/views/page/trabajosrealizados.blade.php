<!DOCTYPE html>

<html lang="es">

<head>

  

  <meta charset="utf-8">

    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <meta name="viewport" content="width=device-width, initial-scale=1">

    <meta name="description" content="">

    <meta name="author" content="">

  <title>Alambrados Prix</title>

  <link href="{{ asset('css/estilos.css') }}" rel="stylesheet">

    <!-- Bootstrap Core CSS -->

    <link href="{{ asset('css/materialize/materialize.min.css') }}" rel="stylesheet">



    <!--Import Google Icon Font-->

  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

  <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,600,700" rel="stylesheet">



  <link rel="icon" href="{{ asset('favicon.ico') }}" type="image/x-icon">

  <link rel="shortcut icon" href="{{ asset('favicon.ico') }}" type="image/x-icon">



</head>

<body>

@include('page.template.header')



<div align="center">

<div class="container cero yp35" style="width: 82%;">

<div class="tituloRojo Raleway fs36">

Trabajos Realizados

<div class="pemLinearojiz1"></div>

</div>

</div>

</div>



<div class="yp35">

<div class="container cero yp35" style="width: 84%;">

<div class="row">

@foreach($trabajosrealizados as $trabajosrealizado)

<div class="col m12 l6" style="position: relative;">

  <div class="card z-depth-0">

    <div class="card-image center-align">

    <a href="#modal{{$trabajosrealizado->id}}" class="naranja fs20 mayus modal-trigger">

        <div class="efecto">

            <div class="central" style="background-color: #D31B22; color:white; padding: 1px; width: 139px; height: 37px; border-radius: 0px;">              

              <div class="center-align fw7 fs18" style="padding-top: 3px;">INGRESAR</div>

            </div>

        </div>

        <img src="{{asset('imagenes/modalrealizados/'.$trabajosrealizado->imagen)}}" style="border: 1px solid #DDD; max-width: 100%; height: 333px;">

    </a>

    </div>  

    <div class="card-content cero" style="border: 1px solid #E4E4E4; padding: 0; height: 75px;">

      <div class="Raleway fw7 fs17 ctitulo2 editorRico center-align yp10 cero">{!!($trabajosrealizado->titulo)!!}</div>

      <div class="Raleway fw4 fs15 gris10 editorRico center-align  cero">{!!($trabajosrealizado->subtitulo)!!}</div>

    </div>

  </div>

</div>

@endforeach

</div>

</div>

</div>



@foreach($trabajosrealizados as $trabajosrealizado)

<div class="center-align" style="margin: 0; padding: 0;">

  <!-- Galeria Structure -->

  <div id="modal{{$trabajosrealizado->id}}" class="modal" style="width: 70%;">

    <div class="modal-footer">

      <a href="#!" class="modal-close btn-flat Raleway fs14" style="color: #777777;">Cerrar X</a>

    </div>

    <div class="modal-content">

      <div class="Raleway fw6 fs26 ctitulo2 editorRico center-align" style="margin: 0px;">{!!($trabajosrealizado->titulo)!!}</div>

      <div class="Raleway fw5 fs18 gris10 editorRico center-align" style="margin: 0px;">{!!($trabajosrealizado->subtitulo)!!}</div>

  

  <div class="row">      

  

    <div class="col l12 img-responsive" id="imagen-grande" style="width: 98%; margin: 0 0 0 10px; padding: 0;">

      {{-- <a href="#" id="enlace" data-fancybox="images"> --}}



        <img id="imgDisp" class="img-responsive" src="{{asset('imagenes/modalrealizados/'.$trabajosrealizado->imagen)}}" style="width: 555px; height: 333px; border:1px solid #DDDDDD;">           



      {{-- </a> --}}

    </div>

    <div class="col l12" style="width: 100%; height: 32%; margin: 5px 0 0 0; padding: 0;">     

        @if($trabajosrealizado->imagen!=null)

          <img id="imgName" onclick="changeImage('{{asset('imagenes/modalrealizados/'.$trabajosrealizado->imagen)}}')" src="{{asset('imagenes/modalrealizados/'.$trabajosrealizado->imagen)}}"  style="height: 100px;width: 180px; border:1px solid #DDDDDD; margin: 0px;" {{-- onClick="javascript: verImagenEnGrande('{{asset('imagenes/modalrealizados/'.$trabajosrealizado->imagen)}}');" --}}>

        @endif

        @if($trabajosrealizado->imagen1!=null)

          <img id="imgName" onclick="changeImage('{{asset('imagenes/modalrealizados/'.$trabajosrealizado->imagen1)}}')" src="{{asset('imagenes/modalrealizados/'.$trabajosrealizado->imagen1)}}" style="height: 100px;width: 180px; border:1px solid #DDDDDD; margin: 0px;" {{-- onClick="javascript: verImagenEnGrande('{{asset('imagenes/modalrealizados/'.$trabajosrealizado->imagen1)}}');" --}}>

        @endif

        @if($trabajosrealizado->imagen2!=null)

          <img id="imgName" onclick="changeImage('{{asset('imagenes/modalrealizados/'.$trabajosrealizado->imagen2)}}')" src="{{asset('imagenes/modalrealizados/'.$trabajosrealizado->imagen2)}}" style="height: 100px;width: 180px; border:1px solid #DDDDDD; margin: 0px;" {{-- onClick="javascript: verImagenEnGrande('{{asset('imagenes/modalrealizados/'.$trabajosrealizado->imagen2)}}');" --}}>     

        @endif

    </div>
  </div>
  </div>
  <style type="text/css">
    .contenido-trabajo p{

  font-family: 'Raleway', sans-serif;

  font-size: 17px;

  color: #858585;

}
  </style>
<div class="row" style="width: 580px; text-align: left;"> 
<div class="col s12 contenido-trabajo"> 
  <p><strong>TAREAS REALIZADAS </strong></p>
  <p>El proyecto desarrollado en las plantas de Pampa Energ&iacute;a consisti&oacute; en limpieza hidrocin&eacute;tica integral. Nuestros ingenieros analizan el equipo a ser limpiado y los dep&oacute;sitos a ser removidos, en funci&oacute;n de ello, seleccionan los productos qu&iacute;micos y el proceso de limpieza m&aacute;s adecuado. Incorporando tratamientos integrales de los efluentes, cumplimos con las leyes vigentes sobre la protecci&oacute;n del medio ambiente y proveemos a nuestros clientes un servicio completo de limpieza.</p>
  </div>
</div>
  </div>


</div>
@endforeach













@include('page.template.footer')



	<script type="text/javascript" src="{{ asset('js/jquery/jquery.js')}}"></script>

    <script type="text/javascript" src="{{ asset('js/jquery/jquery.min.js')}}"></script>

    <script type="text/javascript" src="{{ asset('js/materialize/materialize.min.js') }}"></script>

    <script type="text/javascript">



	  $(document).ready(function(){

        $('.slider').slider();



    });

      

    </script>

</body>

</html>

<script type="text/javascript" src="{{ asset('js/jquery/jquery.js')}}"></script>

    <script type="text/javascript" src="{{ asset('js/jquery/jquery.min.js')}}"></script>

    <script type="text/javascript" src="{{ asset('js/materialize/materialize.min.js') }}"></script>



<script type="text/javascript">

 $(document).ready(function(){

  $('.dropdown-trigger').dropdown({

    constrainWidth: false,

    closeOnClick: false,

    fullWidth: false,

    hover: 1,

  });

   });

</script>

<script type="text/javascript">

  $(document).ready(function(){

    $('.sidenav').sidenav();

  });

</script>

<script type="text/javascript">

   $(document).ready(function(){

    $('.modal').modal();

  });

</script>