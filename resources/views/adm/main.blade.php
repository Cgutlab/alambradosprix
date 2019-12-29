<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Panel de Administrador | @yield('titulo')</title>

    <!-- Materialize Core CSS -->
    <link href="{{ asset('css/materialize/materialize.min.css') }}" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="{{ asset('css/admin.css')}}">


    <!--Import Google Icon Font-->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

<style type="text/css">
.adm-estandar *{
font-size: 14px!important;
padding: 0;
margin: 0;
line-height: 20px
}
</style>
</head>
<body>

<!-- Menu derecho -->
<div class="row">
            <div id="nav-mobile" class="side-nav fixed col s3 z-depth-1" style="padding: 0; height: 100%; overflow-y: auto; position: fixed;" role="navigation">
                
                <img class="responsive-img hide-on-med-and-down" src="{{asset('imagenes/logos/'.$header->imagen)}}">
                    <ul class="collapsible z-depth-0">
                        
                        <li class="bold" ><a class="collapsible-header <?php if(isset($destacados_seccion)){echo($destacados_seccion);} ?> waves-effect waves-admin"><i class="material-icons">home</i>Home</a>
                            <div class="collapsible-body">
                                <div class="<?php if(isset($home_slider_create)){echo($home_slider_create);} ?>"><a href="{{ url('adm/home/slider/create') }}">Crear slider</a></div>
                                <div class="<?php if(isset($home_slider_edit)){echo($home_slider_edit);} ?>"><a href="{{ url('adm/home/slider/show') }}">Editar slider</a></div>
                                <div class="<?php if(isset($contenidos_edit)){echo($contenidos_edit);} ?>"><a href="{{ url('adm/home/contenido/show') }}">Editar contenido</a></div>
                                <div class="<?php if(isset($destacados_edit)){echo($destacados_edit);} ?>"><a href="{{ url('adm/home/destacado/show') }}">Editar destacados</a></div>
<!-- Pasos como trabajamos / banner
                                <div class="<?php if(isset($trabajamos_create)){echo($trabajamos_create);} ?>"><a href="{{ url('adm/trabajamos/create') }}">Crear Trabajamos</a></div>
                                <div class="<?php if(isset($trabajamos_edit)){echo($trabajamos_edit);} ?>"><a href="{{ url('adm/trabajamos/show') }}">Editar Trabajamos</a></div>                              
                                <div class="<?php if(isset($bannercontenidos_edit)){echo($bannercontenidos_edit);} ?>"><a href="{{ url('adm/bannercontenidos/edit/1') }}">Editar Banner Contenido</a></div>
                                <div class="<?php if(isset($bannericonos_create)){echo($bannericonos_create);} ?>"><a href="{{ url('adm/bannericonos/create') }}">Crear Icono</a></div>
                                <div class="<?php if(isset($bannericonos_edit)){echo($bannericonos_edit);} ?>"><a href="{{ url('adm/bannericonos/show') }}">Editar Banner Iconos</a></div>
-->
                            </div>
                        </li>


                        <li class="bold"><a class="collapsible-header <?php if(isset($empresa_seccion)){echo($empresa_seccion);} ?> waves-effect waves-admin"><i class="material-icons">business</i>Empresa</a>
                            <div class="collapsible-body">                        
                                <div class="<?php if(isset($empresa_slider_create)){echo($empresa_slider_create);} ?>"><a href="{{ url('adm/empresa/slider/create') }}">Crear slider</a></div>
                                <div class="<?php if(isset($empresa_slider_edit)){echo($empresa_slider_edit);} ?>"><a href="{{ url('adm/empresa/slider/show') }}">Editar slider</a></div>
                                <div class="<?php if(isset($empresa_contenido_edit)){echo($empresa_contenido_edit);} ?>"><a href="{{ route('empresa.contenido.edit') }}">Editar contenido</a></div>
<!-- linea de tiempo / vision valores
                                <div class="<?php if(isset($tiempos_create)){echo($tiempos_create);} ?>"><a href="{{ url('adm/tiempos/create') }}">Crear Tiempo</a></div>
                                <div class="<?php if(isset($tiempos_edit)){echo($tiempos_edit);} ?>"><a href="{{ url('adm/tiempos/show') }}">Editar Tiempo</a></div>
                                <div class="<?php if(isset($publicacions_create)){echo($publicacions_create);} ?>"><a href="{{ url('adm/publicacions/create') }}">Crear Publicacion</a></div>
                                <div class="<?php if(isset($publicacions_edit)){echo($publicacions_edit);} ?>"><a href="{{ url('adm/publicacions/show') }}">Editar Publicacion</a></div>
-->                            
                            </div>
                        </li>

                        <li class="bold"><a class="collapsible-header <?php if(isset($productoalambrados_seccion)){echo($productoalambrados_seccion);} ?> waves-effect waves-admin"><i class="material-icons">style</i>Productos</a>
                            <div class="collapsible-body"> 
                                <div class="<?php if(isset($productoalambrados_create)){echo($productoalambrados_create);} ?>"><a href="{{ url('adm/productoalambrado/create') }}">Crear Producto </a></div>
                                <div class="<?php if(isset($productoalambrados_lists)){echo($productoalambrados_lists);} ?>"><a href="{{ url('adm/productoalambrado/lists/1') }}">Editar Alambrados </a></div>
                                <div class="<?php if(isset($productoalambrados_lists)){echo($productoalambrados_lists);} ?>"><a href="{{ url('adm/productoalambrado/lists/2') }}">Editar Puertas y Portones </a></div>
                                <div class="<?php if(isset($productoalambrados_lists)){echo($productoalambrados_lists);} ?>"><a href="{{ url('adm/productoalambrado/lists/3') }}">Editar Postes </a></div>
                                <div class="<?php if(isset($productoalambrados_lists)){echo($productoalambrados_lists);} ?>"><a href="{{ url('adm/productoalambrado/lists/4') }}">Editar Otros Productos </a></div>
                            </div>
                        </li>

                        <li class="bold"><a class="collapsible-header <?php if(isset($servcontenidos_seccion)){echo($servcontenidos_seccion);} ?> waves-effect waves-admin"><i class="material-icons">list</i>Servicios</a>
                            <div class="collapsible-body">                          

                                <div class="<?php if(isset($servdestacados_create)){echo($servdestacados_create);} ?>"><a href="{{ url('adm/servdestacado/create') }}">Crear destacado</a></div>
                                <div class="<?php if(isset($servitems_create)){echo($servitems_create);} ?>"><a href="{{ url('adm/servitem/create') }}">Crear item</a></div>
                                <div class="<?php if(isset($servitems_edit)){echo($servitems_edit);} ?>"><a href="{{ url('adm/servitem/show') }}">Editar item</a></div>
                                <div class="<?php if(isset($servdestacados_edit)){echo($servdestacados_edit);} ?>"><a href="{{ url('adm/servdestacado/show') }}">Editar destacado</a></div>
                                <div class="<?php if(isset($servcontenidos_edit)){echo($servcontenidos_edit);} ?>"><a href="{{ url('adm/servcontenido/show') }}">Editar contenido</a></div>
                            </div>
                        </li>

                        <li class="bold"><a class="collapsible-header <?php if(isset($modalrealizado_seccion)){echo($modalrealizado_seccion);} ?> waves-effect waves-admin"><i class="material-icons">assignment_turned_in</i>Trabajos Realizados</a>
                            <div class="collapsible-body">              
                                <div class="<?php if(isset($modalrealizado_create)){echo($modalrealizado_create);} ?>"><a href="{{ url('adm/modalrealizado/create') }}">Crear Art&iacute;culo</a></div>
                                <div class="<?php if(isset($modalrealizado_edit)){echo($modalrealizado_edit);} ?>"><a href="{{ url('adm/modalrealizado/show') }}">Editar Art&iacute;culo</a></div>
                            </div>          
                        </li>


<!-- 
                        <li class="bold"><a class="collapsible-header <?php if(isset($solucion_seccion)){echo($solucion_seccion);} ?> waves-effect waves-admin"><i class="tiny material-icons">build</i>Soluciones a medida</a>
                            <div class="collapsible-body"> 
                                <div class="<?php if(isset($solucion_edit)){echo($solucion_edit);} ?>"><a href="{{ url('adm/solucion/show') }}">Editar contenido</a></div>
                            </div>
                        </li> 
           
                         <li class="bold"><a class="collapsible-header <?php if(isset($equipamiento_seccion)){echo($equipamiento_seccion);} ?> waves-effect waves-admin"><i class="material-icons">build</i>Equipamiento</a>
                            <div class="collapsible-body">
                                <div class="<?php if(isset($equipamiento_contenido_edit)){echo($equipamiento_contenido_edit);} ?>"><a href="{{ route('equipamiento.contenido.edit') }}">Editar contenido</a></div>
                            </div>
                        </li>

                        <li class="bold"><a class="collapsible-header <?php if(isset($correos_seccion)){echo($correos_seccion);} ?> waves-effect waves-admin"><i class="material-icons">panorama_horizontal</i>Publicitarios</a>
                            <div class="collapsible-body">                          
                                <div class="<?php if(isset($correos_create)){echo($correos_create);} ?>"><a href="{{ url('adm/correo/create') }}">Crear correo</a></div>
                                <div class="<?php if(isset($correos_edit)){echo($correos_edit);} ?>"><a href="{{ url('adm/correo/show') }}">Editar correo</a></div>
                            </div>
                        </li>

                        <li class="bold"><a class="collapsible-header <?php if(isset($categoriasluminarias_seccion)){echo($categoriasluminarias_seccion);} ?> waves-effect waves-admin"><i class="material-icons">style</i>Luminarias</a>
                            <div class="collapsible-body"> 
                                <div class="<?php if(isset($categoriasluminarias_create)){echo($categoriasluminarias_create);} ?>"><a href="{{ url('adm/categorialuminaria/create') }}">Crear Categoria </a></div>
                                <div class="<?php if(isset($categoriasluminarias_edit)){echo($categoriasluminarias_edit);} ?>"><a href="{{ url('adm/categorialuminaria/show') }}">Editar Categoria </a></div>
                                <div class="<?php if(isset($productosluminarias_create)){echo($productosluminarias_create);} ?>"><a href="{{ url('adm/productoluminaria/create') }}">Crear Producto </a></div>
                            <div class="<?php if(isset($productosluminarias_edit)){echo($productosluminarias_edit);} ?>"><a href="{{ url('adm/productoluminaria/show') }}">Editar Producto </a></div>
                            </div>
                        </li>

                        <li class="bold"><a class="collapsible-header <?php if(isset($categoriascompresors_seccion)){echo($categoriascompresors_seccion);} ?> waves-effect waves-admin"><i class="material-icons">style</i>Compresores</a>
                            <div class="collapsible-body"> 
                                <div class="<?php if(isset($categoriascompresors_create)){echo($categoriascompresors_create);} ?>"><a href="{{ url('adm/categoriacompresor/create') }}">Crear Categoria </a></div>
                                <div class="<?php if(isset($categoriascompresors_edit)){echo($categoriascompresors_edit);} ?>"><a href="{{ url('adm/categoriacompresor/show') }}">Editar Categoria </a></div>
                                <div class="<?php if(isset($productoscompresors_create)){echo($productoscompresors_create);} ?>"><a href="{{ url('adm/productocompresor/create') }}">Crear Producto </a></div>

                            </div>
                        </li>

                        <li class="bold"><a class="collapsible-header <?php if(isset($modeloscontenidos_seccion)){echo($modeloscontenidos_seccion);} ?> waves-effect waves-admin"><i class="material-icons">style</i>Modelos</a>
                            <div class="collapsible-body"> 
                                <div class="<?php if(isset($modeloscontenidos_edit)){echo($modeloscontenidos_edit);} ?>"><a href="{{ url('adm/modeloscontenidos/show') }}">Editar Contenidos </a></div>
                                <div class="<?php if(isset($modelosgalerias_create)){echo($modelosgalerias_create);} ?>"><a href="{{ url('adm/modelosgalerias/create') }}">Crear Producto </a></div>
                                <div class="<?php if(isset($modelosgalerias_edit)){echo($modelosgalerias_edit);} ?>"><a href="{{ url('adm/modelosgalerias/show') }}">Editar Producto </a></div>
                            </div>
                        </li>


                        <li class="bold"><a class="collapsible-header <?php if(isset($categoriasnovedads_seccion)){echo($categoriasnovedads_seccion);} ?> waves-effect waves-admin"><i class="material-icons">style</i>Novedades</a>
                            <div class="collapsible-body"> 
                                <div class="<?php if(isset($categoriasnovedads_edit)){echo($categoriasnovedads_edit);} ?>"><a href="{{ url('adm/categorianovedad/show') }}">Lista Categoria </a></div>
                                <div class="<?php if(isset($categoriasnovedads_create)){echo($categoriasnovedads_create);} ?>"><a href="{{ url('adm/categorianovedad/create') }}">Crear Categoria </a></div>
                                <div class="<?php if(isset($productosnovedads_create)){echo($productosnovedads_create);} ?>"><a href="{{ url('adm/productonovedad/create') }}">Crear Producto </a></div>                                
                                <div class="<?php if(isset($galeriasnovedads_create)){echo($galeriasnovedads_create);} ?>"><a href="{{ url('adm/galerianovedad/create') }}">Crear Slider </a></div>                                
                            </div>
                        </li>

                        <li class="bold"><a class="collapsible-header <?php if(isset($clientes_seccion)){echo($clientes_seccion);} ?> waves-effect waves-admin"><i class="material-icons">group</i>Clientes</a>
                            <div class="collapsible-body">              
                                <div class="<?php if(isset($clientes_create)){echo($clientes_create);} ?>"><a href="{{ url('adm/clientes/create') }}">Crear Cliente</a></div>
                                <div class="<?php if(isset($clientes_edit)){echo($clientes_edit);} ?>"><a href="{{ url('adm/clientes/show') }}">Editar Cliente</a></div>
                            </div>          
                        </li>

                        <li class="bold"><a class="collapsible-header <?php if(isset($acategorias_seccion)){echo($acategorias_seccion);} ?> waves-effect waves-admin"><i class="material-icons">style</i>Adhesivos Industriales</a>
                            <div class="collapsible-body">                          
                                <div class="<?php if(isset($acategorias_create)){echo($acategorias_create);} ?>"><a href="{{ url('adm/acategoria/create') }}">Crear categoria</a></div>
                                <div class="<?php if(isset($acategorias_edit)){echo($acategorias_edit);} ?>"><a href="{{ url('adm/acategoria/show') }}">Editar categoria</a></div>
                                <div><a href="#"><i class="material-icons">shopping_cart</i>  Productos</a></div>
                                <div class="<?php if(isset($aproductos_create)){echo($aproductos_create);} ?>"><a href="{{ url('adm/aproducto/create') }}">Crear producto</a></div>
                                <div class="<?php if(isset($aproductos_edit)){echo($aproductos_edit);} ?>"><a href="{{ url('adm/aproducto/show') }}">Editar producto</a></div>
                            </div>
                        </li>  
 -->
<!-- 
                        <li class="bold"><a class="collapsible-header <?php if(isset($calidad_seccion)){echo($calidad_seccion);} ?> waves-effect waves-admin"><i class="material-icons">vertical_align_bottom</i>Calidades</a>
                            <div class="collapsible-body">
                                <div class="<?php if(isset($calidad_contenido_edit)){echo($calidad_contenido_edit);} ?>"><a href="{{ url('adm/calidad/show') }}">Editar contenido</a></div>
                                <div><a href="#"><i class="material-icons">archive</i>  Descargas</a></div>
                                <div class="<?php if(isset($descarga_contenido_create)){echo($descarga_contenido_create);} ?>"><a href="{{ url('adm/descarga/create') }}">Crear descarga</a></div>
                                <div class="<?php if(isset($descarga_contenido_edit)){echo($descarga_contenido_edit);} ?>"><a href="{{ url('adm/descarga/show') }}">Editar descarga</a></div>
                            </div>
                        </li>
 -->
<!--
                        <li class="bold"><a class="collapsible-header <?php if(isset($redes_seccion)){echo($redes_seccion);} ?> waves-effect waves-admin"><i class="material-icons">remove_red_eye</i>Redes sociales</a>
                            <div class="collapsible-body">              
                                <div class="<?php if(isset($redes_create)){echo($redes_create);} ?>"><a href="{{ url('adm/redes/create') }}">Crear red social</a></div>
                                <div class="<?php if(isset($redes_edit)){echo($redes_edit);} ?>"><a href="{{ url('adm/redes/show') }}">Editar red social</a></div>
                            </div>          
                        </li>
-->
                        <li class="bold"><a class="collapsible-header <?php if(isset($logos_seccion)){echo($logos_seccion);} ?> waves-effect waves-admin"><i class="material-icons">collections</i>Logos</a>  
                            <div class="collapsible-body">            
                                <div class="<?php if(isset($logos_edit)){echo($logos_edit);} ?>"><a href="{{ url('adm/logos') }}">Editar logos</a>
                            </div>
                        </li>
                   
                        <li class="bold"><a class="collapsible-header <?php if(isset($datos_seccion)){echo($datos_seccion);} ?> waves-effect waves-admin"><i class="tiny material-icons">view_headline</i>Datos de la empresa</a>
                            <div class="collapsible-body"> 
                                <div class="<?php if(isset($datos_edit)){echo($datos_edit);} ?>"><a href="{{ url('adm/datos') }}">Editar datos</a></div>
                            </div>
                        </li>
                   
                        <li class="bold"><a class="collapsible-header <?php if(isset($metadatos_seccion)){echo($metadatos_seccion);} ?> waves-effect waves-admin"><i class="material-icons">pin_drop</i>Metadatos</a>
                            <div class="collapsible-body">
                                <div class="<?php if(isset($metadatos_edit)){echo($metadatos_edit);} ?>"><a href="{{ url('adm/metadatos') }}">Editar Metadatos</a></div>
                            </div>
                        </li>
                 
                         <li class="bold"><a class="collapsible-header <?php if(isset($usuarios_seccion)){echo($usuarios_seccion);} ?> waves-effect waves-admin"><i class="material-icons">account_circle</i>Usuarios</a>
                            <div class="collapsible-body">
                                <div class="<?php if(isset($usuarios_create)){echo($usuarios_create);} ?>"><a href="{{ url('adm/usuarios/create') }}">Crear Usuario</a></div>
                                <div class="<?php if(isset($usuarios_edit)){echo($usuarios_edit);} ?>"><a href="{{ url('adm/usuarios') }}">Editar Usuario</a></div>
                            </div>
                        </li>

                    </ul>
            </div>

    <div id="page-wrapper">
        <nav class="z-depth-0 col s9 push-s3" style="padding: 0;">
            <div class="nav-wrapper nave ">
                <ul class="hide-on-med-and-down" style="margin: 0 10%;">

                    <li>
                      <div style="font-size: 24px;">@yield('titulo')</div>
                    </li>
                </ul>
                
                <ul class="right hide-on-med-and-down" style="margin: 0 10%;">
                    <li><a class="dropdown-trigger" href="{{route('adm.logout')}}" data-target="dropdown1">Cerrar Sesión</a></li>
                </ul>
            </div>
        </nav>
            <div class="col s9 push-s3" style="padding: 40px;">
                @yield('cuerpo')
            </div>                             
    </div>
</div>
    <!-- /#wrapper -->
    <!-- jQuery -->
    <script src="{{ asset('js/jquery/jquery.min.js')}}"></script>

    <!-- Materialize Core JavaScript -->
    <script src="{{ asset('js/materialize/materialize.min.js')}}"></script>

    <script type="text/javascript">
    $(document).ready(function()
    {
        $('.collapsible').collapsible();
    });
    </script>
</body>
</html>

