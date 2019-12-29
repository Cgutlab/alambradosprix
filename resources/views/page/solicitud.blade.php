@php

/* SOLICITUD DE PRESUPUESTO

	routes\web.php

		Route::get('presupuesto', ['uses' => 'page\PresupuestoController@index', 'as' => 'presupuesto']);

		Route::post('presupuesto/enviar', ['uses' => 'page\PresupuestoController@enviarMail', 'as' => 'presupuesto.enviar']);

	

	app\Mail\Presupuesto.php

	app\Http\Controllers\page\PresupuestoController.php

	resources\views\page\presupuesto.blade.php

*	resources\views\page\solicitud.blade.php

*/

@endphp

<!DOCTYPE html>

<html>

<body>

	<h2>Alambrados Prix</h2>

	<h3>Solicitud de Presupuesto</h3> 



	<p>Enviado desde la web </p>

	<br>

	<br>

	<h3>Datos del contacto</h3>

	<ul>

		<li><strong>Nombre: </strong>{{$nombre}}</li>
		<li><strong>Email: </strong>{{$email}}</li>
		<li><strong>Telefono: </strong>{{$telefono}}</li>
		<li><strong>Localidad: </strong>{{$localidad}}</li>
		<li><strong>Direccion: </strong>{{$direccion}}</li>
		<li><strong>Descripcion: </strong>{{$descripcion}}</li>
		<li><strong>Tipo de Poste: </strong>{{$tipodeposte}}</li>
		@if($tipodeposte == 'Quebracho Blanco')	    <li><strong>Altura Quebracho Blanco: 	</strong>{{$altura1}}</li>	@endif
		@if($tipodeposte == 'Quebracho Colorado')	<li><strong>Altura Quebracho Colorado: 	</strong>{{$altura2}}</li>	@endif
		@if($tipodeposte == 'Hormigon Recto')	    <li><strong>Altura Hormigon Recto: 		</strong>{{$altura3}}</li>	@endif
		@if($tipodeposte == 'Hormigon Olimpico')	<li><strong>Altura Hormigon Olimpico: 	</strong>{{$altura4}}</li>	@endif
		<li><strong>Apertura del Alambre: </strong>{{$apertura}}</li>
		<li><strong>Calibre del Alambre: </strong>{{$calibre}}</li>
		<li><strong>Largo del Lateral (en metros): </strong>{{$largolateral}}</li>
{{-- 	<li><strong>Plano o archivo: </strong>{{$imagen}}</li> --}}
		<li><strong>¿Cantidad de Lados 90°?: </strong>{{$cantidadlados}}</li>
		<li><strong>Abertura: </strong>{{$abertura}}</li>
		<li><strong>¿Tiene Ochava?: </strong>{{$tieneochava}}</li>
		<li><strong>Tipo de Abertura: </strong>{{$tipoabertura}}</li>

	</ul>

</body>

</html>