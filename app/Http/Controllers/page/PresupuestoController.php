<?php

/*SOLICITUD DE PRESUPUESTO

  routes\web.php

    Route::get('presupuesto', ['uses' => 'page\PresupuestoController@index', 'as' => 'presupuesto']);

    Route::post('presupuesto/enviar', ['uses' => 'page\PresupuestoController@enviarMail', 'as' => 'presupuesto.enviar']);

  

  app\Mail\Presupuesto.php

* app\Http\Controllers\page\PresupuestoController.php

  resources\views\page\presupuesto.blade.php

  resources\views\page\solicitud.blade.php

*/

namespace App\Http\Controllers\page;



use Symfony\Component\HttpFoundation\File\UploadedFile;

use App\Http\Controllers\Controller;

use Illuminate\Support\Facades\Mail;

use Illuminate\Http\Request;

use App\Extensions\Helpers;

use App\Mail\Presupuesto;

use App\Dato;

use App\Correo;



class PresupuestoController extends Controller

{

  public function index(){

  	$active='presupuesto';

    return view('page.presupuesto', compact('active'));

  }

  

  public function enviarMail(Request $request) {

      $datos = Dato::where('tipo', 'correo')->first();

        $nombre = $request->input('nombre');
        $email = $request->input('email');
        $telefono = $request->input('telefono');
        $localidad = $request->input('localidad');
        $direccion = $request->input('direccion');
        $descripcion = $request->input('descripcion');
        $tipodeposte = $request->input('tipodeposte');
        $altura1 = $request->input('altura1');
        $altura2 = $request->input('altura2');
        $altura3 = $request->input('altura3');
        $altura4 = $request->input('altura4');
        $apertura = $request->input('apertura');
        $calibre = $request->input('calibre');
        $largolateral = $request->input('largolateral');
        $imagen = $request->input('imagen');
        $cantidadlados = $request->input('cantidadlados');
        $abertura = $request->input('abertura');
        $tieneochava = $request->input('tieneochava');
        $tipoabertura = $request->input('tipoabertura');

      $verion = $datos->texto;

      Mail::to($datos->texto)->send(new Presupuesto($nombre,$email,$telefono,$localidad,$direccion,$descripcion,$tipodeposte,$altura1,$altura2,$altura3,$altura4,$apertura,$calibre,$largolateral,$imagen,$cantidadlados,$abertura,$tieneochava,$tipoabertura, $verion));

      if (count(Mail::failures()) > 0) {
          $success = 'Ha ocurrido un error al enviar el correo';
      }else{
          $success = 'Correo enviado correctamente';
      }

      return back()->with('success', $success);

    }

}

