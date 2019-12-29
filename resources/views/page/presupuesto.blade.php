{{--

 SOLICITUD DE PRESUPUESTO

  routes\web.php

    Route::get('presupuesto', ['uses' => 'page\PresupuestoController@index', 'as' => 'presupuesto']);

    Route::post('presupuesto/enviar', ['uses' => 'page\PresupuestoController@enviarMail', 'as' => 'presupuesto.enviar']);

  

  app\Mail\Presupuesto.php

  app\Http\Controllers\page\PresupuestoController.php

* resources\views\page\presupuesto.blade.php

  resources\views\page\solicitud.blade.php

--}}
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

  <link href="https://fonts.googleapis.com/css?family=Raleway:300,400,500,600,700" rel="stylesheet">

  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css">

  <link rel="icon" href="{{ asset('favicon.ico') }}" type="image/x-icon">

  <link rel="shortcut icon" href="{{ asset('favicon.ico') }}" type="image/x-icon">



</head>

<body>

@include('page.template.header')







<div align="center">

<?php

if(isset($_GET['mensaje'])){

    if($_GET['mensaje']=="ok"){ ?>



        <div class="alert alert-success text-center" role="alert" style="background: #007E00; border-bottom: 1px solid gray;">

            <?php echo "¡El mensaje se envió correctamente!" ?>

        </div>



    <?php }else{ ?>



        <div class="alert alert-danger text-center" role="alert"  style="background: orange; border-bottom: 1px solid gray;">

            <?php echo "¡Error al enviar el mensaje!"?>

        </div>



    <?php }

}

?>

</div>

{!!Form::open(['route'=>'presupuesto.enviar', 'method'=>'POST', 'files' => true])!!}

<div class="container" style="margin-bottom: 100px;">

    <div class="row" style="margin-top: 100px;">

        <div id="estado1" >

            <div class="col l12">

                <div align="center">

                    <img class="responsive-img" style="align-items: center;" src="{{asset('imagenes/help/presupuesto1.jpg')}}">

                </div>

                <br><br>

                <div class="row">

                    <div class="input-field col l5 push-l1">

                        <input type="text" id="nombre" name="nombre"  class="validate">

                        <label for="nombre">Nombre</label>

                    </div>

                    <div class="input-field col l5 push-l1">

                        <input type="text" id="email" name="email"  class="validate">

                        <label for="email">Email</label>

                    </div>

                    <div class="input-field col l5 push-l1">

                        <input type="text" id="telefono" name="telefono"  class="validate">

                        <label for="telefono">Tel&eacute;fono</label>

                    </div>

                    <div class="input-field col l5 push-l1">

                        <input type="text" id="localidad" name="localidad"  class="validate">

                        <label for="localidad">Localidad de la obra</label>

                    </div>

                    <div class="input-field col l5 push-l1">

                        <input type="text" id="direccion" name="direccion"  class="validate">

                        <label for="direccion">Direcci&oacute;n de la obra</label>

                    </div>

                    <div class="input-field col l5 push-l1">

                        <input type="text" id="descripcion" name="descripcion"  class="validate">

                        <label for="descripcion">Descripci&oacute;n de la obra</label>

                    </div>


                    <div class="input-field col l3 pull-l1 right">

                        <button type="button" id="botonSiguienteEstado" class="btn right z-depth-0" style="margin-top: 20px; background-color:#DE2007; color:white; font-weight: bold;">Siguiente</a>

                    </div>

                </div>

            </div>

        </div>



        <div id="estado2" style="display: none; ">

        <div class="col l12">

            <div align="center">

                <img class="responsive-img" style="align-items: center;" src="{{asset('imagenes/help/presupuesto2.jpg')}}">

            </div>

            <div class="row yp15" style="color: #646464; margin-top: 35px;">

                    <div class="fw6">
                    Tipo de Poste
                    </div>
                    <div class="row yp15">
                        <div class="col l3 m6 s12">
                            <div align="center">
                            <img src="{{asset('imagenes/help/solicitud_1.jpg')}}">
                            <p>
                              <label>
                                <input class="with-gap" name="tipodeposte" value="Quebracho Blanco" type="radio" checked />
                                <span>Quebracho Blanco</span>
                              </label>
                            </p>
                            </div>
                        <div class="lineaGrisClaro"></div>
                            <div align="center" style="margin-top:35px;">
                            Altura del Quebracho Blanco
                             <div class="input-field col s12">
                                <select name="altura1">
                                  <option value="1 M" selected>1 M</option>                                  
                                  <option value="1,50 M">1,50 M</option>
                                  <option value="1,80 M">1,80 M</option>
                                  <option value="2 M">2 M</option>
                                </select>
                                
                              </div>
                            </div>
                        </div>
                        <div class="col l3 m6 s12">
                            <div align="center">
                            <img src="{{asset('imagenes/help/solicitud_2.jpg')}}">
                            <p>
                              <label>
                                <input class="with-gap" name="tipodeposte" value="Quebracho Colorado" type="radio" />
                                <span>Quebracho Colorado</span>
                              </label>
                            </p>
                            </div>
                        <div class="lineaGrisClaro"></div>
                            <div align="center" style="margin-top:35px;">
                            Altura del Q. Colorado
                             <div class="input-field col s12">
                                <select name="altura2">
                                  <option value="1 M" selected>1 M</option>                                  
                                  <option value="1,50 M">1,50 M</option>
                                  <option value="1,80 M">1,80 M</option>
                                  <option value="2 M">2 M</option>
                                </select>                                
                              </div>
                            </div>
                        </div>
                        <div class="col l3 m6 s12">
                            <div align="center">
                            <img src="{{asset('imagenes/help/solicitud_3.jpg')}}">
                            <p>
                              <label>
                                <input class="with-gap" name="tipodeposte" value="Hormigon Recto" type="radio" />
                                <span>Hormig&oacute;n Recto</span>
                              </label>
                            </p>
                            </div>
                        <div class="lineaGrisClaro"></div>
                            <div align="center" style="margin-top:35px;">
                            Altura del Hormig&oacute;n Recto
                             <div class="input-field col s12">
                                <select name="altura3">
                                  <option value="1 M" selected>1 M</option>                                  
                                  <option value="1,50 M">1,50 M</option>
                                  <option value="1,80 M">1,80 M</option>
                                  <option value="2 M">2 M</option>
                                </select>
                                
                              </div>
                            </div>
                        </div>
                        <div class="col l3 m6 s12">
                            <div align="center">
                            <img src="{{asset('imagenes/help/solicitud_4.jpg')}}">
                            <p>
                              <label>
                                <input class="with-gap" name="tipodeposte" value="Hormigon Olimpico" type="radio" />
                                <span>Hormig&oacute;n Ol&iacute;mpico</span>
                              </label>
                            </p>
                            </div>
                        <div class="lineaGrisClaro"></div>
                            <div align="center" style="margin-top:35px;">
                            Altura del Hormig&oacute;n Ol&iacute;mpico
                             <div class="input-field col s12">
                                <select name="altura4">
                                  <option value="1,80 M" selected>1,80 M</option>
                                  <option value="2 M">2 M</option>
                                </select>
                                
                              </div>
                            </div>
                        </div>
                    </div>
                <div class="fw6">
                    Apertura del Alambre
                </div>
                    <div class="row yp15">
                    <div class="col l12" style="padding: 0 10% 0 10%;">
                        <div class="col l4 m12">
                            <div align="center">
                            <img src="{{asset('imagenes/help/apertura_1.jpg')}}" style="padding: 20px 0 20px 0;">
                            <p>
                              <label>
                                <input class="with-gap" name="apertura" value="38,1mm" type="radio" checked />
                                <span>38,1 mm</span>
                              </label>
                            </p>
                            </div>
                        </div>
                        <div class="col l4 m12">
                            <div align="center">
                            <img src="{{asset('imagenes/help/apertura_2.jpg')}}" style="padding: 10px 0 10px 0;">
                            <p>
                              <label>
                                <input class="with-gap" name="apertura" value="50,8mm" type="radio" />
                                <span>50,8 mm</span>
                              </label>
                            </p>

                            </div>
                        </div>
                        <div class="col l4 m12">
                            <div align="center">
                            <img src="{{asset('imagenes/help/apertura_3.jpg')}}">
                            <p>
                              <label>
                                <input class="with-gap" name="apertura" value="63mm" type="radio" />
                                <span>63 mm</span>
                              </label>
                            </p>
                            </div>
                        </div>
                    </div>
                    <div class="row yp15">
                        <div class="col l12" style="padding: 0 10% 0 10%;;">
                        <div class="col l4 m12">
                                <div align="center">
                                <img src="{{asset('imagenes/help/calibre_1.jpg')}}">
                                <p>
                                  <label>
                                    <input class="with-gap" name="calibre" value="Calibre14" type="radio" checked />
                                    <span>Calibre 14</span>
                                  </label>
                                </p>
                                </div>
                            </div>
                            <div class="col l4 m12">
                                <div align="center">
                                <img src="{{asset('imagenes/help/calibre_2.jpg')}}">
                                <p>
                                  <label>
                                    <input class="with-gap" name="calibre" value="Calibre13" type="radio" />
                                    <span>Calibre 13</span>
                                  </label>
                                </p>

                                </div>
                            </div>
                            <div class="col l4 m12">
                                <div align="center">
                                <img src="{{asset('imagenes/help/calibre_3.jpg')}}">
                                <p>
                                  <label>
                                    <input class="with-gap" name="calibre" value="Calibre12" type="radio" />
                                    <span>Calibre 12</span>
                                  </label>
                                </p>
                                </div>
                            </div>                   
                        </div>
                    </div>
                    </div>

                        Metros de cada lateral
                    <div class="row yp15">
                    <div class="col l6">
                        <input type="text" id="largolateral" name="largolateral"  class="validate" placeholder="1m, 1m, 2m, 2m">

                        <label for="largolateral">Largo de los Laterales (en metros)</label>
                    </div>
                    <div class="col l6">
                        

                        <div class="file-field col l12">
                            <div class="btn" style="background: #DE2007;">
                              <span>Adjuntar plano o archivo</span>
                              <input type="file" id="imagen" name="imagen">
                            </div>
                            <div class="file-path-wrapper">
                              <input class="file-path validate" type="text" file">
                            </div>
                        </div>
                    </div>
                    </div>

                    <div class="row yp15">
                    <div class="col l6">
                        <input type="text" id="cantidadlados" name="cantidadlados"  class="validate">

                        <label for="cantidadlados">¿Cantidad de Lados  90°?</label>
                    </div>
                    <div class="col l6">
                    <div class="fw6">
                        Abertura
                      </div>
                        <p>
                          <label>
                            <input class="with-gap" name="abertura" value="Aberturacentro" type="radio" checked />
                            <span>Abertura en el centro del lateral</span>
                          </label>
                        </p>
                        <p>
                          <label>
                            <input class="with-gap" name="abertura" value="Aberturaesquina" type="radio" />
                            <span>Abertura en la esquina del lateral</span>
                          </label>
                        </p>
                    </div>
                    </div>
                    <div class="row yp15">
                    <div class="col l6">
                        ¿Tiene Ochava?
                        <p>
                          <label>
                            <input class="with-gap" name="tieneochava" value="Si tiene Ochava" type="radio" checked />
                            <span>Si</span>
                          </label>
                        </p>
                        <p>
                          <label>
                            <input class="with-gap" name="tieneochava" value="No tiene Ochava" type="radio" />
                            <span>No</span>
                          </label>
                        </p>
                    </div>
                    <div class="col l6">
                        Tipo de Abertura
                        <p>
                          <label>
                            <input class="with-gap" name="tipoabertura" value="Puerta Hierro" type="radio"  />
                            <span>Puerta Hierro</span>
                          </label>
                        </p>
                        <p>
                          <label>
                            <input class="with-gap" name="tipoabertura" value="Portón Común" type="radio" />
                            <span>Portón Común</span>
                          </label>
                        </p>
                        <p>
                          <label>
                            <input class="with-gap" name="tipoabertura" value="Portón Reforzado" type="radio" checked/>
                            <span>Portón Reforzado</span>
                          </label>
                        </p>
                    </div>
                    </div>

                <div class="input-field col l3 pull-l1 right">

                    <a type="submit" id="botonEstadoAnterior" class="btn center z-depth-0" style="margin-top: 20px; background-color:white; border:1px solid #DE2007; color:black;">Anterior</a>

                    <button type="submit" id="botonSiguienteAnterior" class="btn right z-depth-0" style="margin-top: 20px; background-color:#DE2007; color:white; font-weight: bold;">Enviar</button>

                </div>

            </div>

        </div>

        </div>

    </div>

</div>





<script type="text/javascript" src="js/jquery.js"></script>

<script type="text/javascript" src="js/jquery.min.js"></script>

<script type="text/javascript" src="js/materialize.min.js"></script>

<script>



    document.getElementById("botonSiguienteEstado").addEventListener("click", mostrarEstado2);

    document.getElementById("botonEstadoAnterior").addEventListener("click", mostrarEstado1);



    function mostrarEstado2() {

        document.getElementById("estado1").className = "animated bounceOutLeft";

        setTimeout(function(){ 

            document.getElementById("estado1").style.display = "none"; 

            document.getElementById("estado2").style.display = "block";

            document.getElementById("estado2").className = "animated bounceInRight";

            

            document.getElementById("elDiv1").className = "paso datos col m2 col l2 offset-m1";

            document.getElementById("elDiv2").className = "paso obra active col m4 col l4 push-l3";

        }, 200);



    }

    

    function mostrarEstado1() {

        document.getElementById("estado2").className = "animated bounceOutLeft";

        

        setTimeout(function(){ 

            document.getElementById("estado2").style.display = "none"; 

            document.getElementById("estado1").style.display = "block";

            document.getElementById("estado1").className = "animated bounceInRight";

            

            document.getElementById("elDiv1").className = "paso datos active col m2 col l2 offset-m1";

            document.getElementById("elDiv2").className = "paso obra col l2 col m4 col l4 push-l3";

        }, 1);

    }

    

    function animacion(id, clase) {

        $(id).removeClass("animated "+clase).addClass(clase + ' animated').one('webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend', function(){

          $(this).removeClass("animated "+clase);

        });

    };



</script>







@include('page.template.footer')

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
    $('select').formSelect();
  });    

</script>