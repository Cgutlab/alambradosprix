<?php

/*  SOLICITUD DE PRESUPUESTO

    routes\web.php

        Route::get('presupuesto', ['uses' => 'page\PresupuestoController@index', 'as' => 'presupuesto']);

        Route::post('presupuesto/enviar', ['uses' => 'page\PresupuestoController@enviarMail', 'as' => 'presupuesto.enviar']);

    

*   app\Mail\Presupuesto.php

    app\Http\Controllers\page\PresupuestoController.php

    resources\views\page\presupuesto.blade.php

    resources\views\page\solicitud.blade.php

*/



namespace App\Mail;



use Illuminate\Contracts\Queue\ShouldQueue;

use Illuminate\Queue\SerializesModels;

use Illuminate\Bus\Queueable;

use Illuminate\Mail\Mailable;



class Presupuesto extends Mailable

{

    use Queueable, SerializesModels;

    public function __construct($nombre,$email,$telefono,$localidad,$direccion,$descripcion,$tipodeposte,$altura1,$altura2,$altura3,$altura4,$apertura,$calibre,$largolateral,$imagen,$cantidadlados,$abertura,$tieneochava,$tipoabertura)

    {
        $this->nombre = $nombre;
        $this->email = $email;
        $this->telefono = $telefono;
        $this->localidad = $localidad;
        $this->direccion = $direccion;
        $this->descripcion = $descripcion;
        $this->tipodeposte = $tipodeposte;
        $this->altura1 = $altura1;
        $this->altura2 = $altura2;
        $this->altura3 = $altura3;
        $this->altura4 = $altura4;
        $this->apertura = $apertura;
        $this->calibre = $calibre;
        $this->largolateral = $largolateral;
        $this->imagen = $imagen;
        $this->cantidadlados = $cantidadlados;
        $this->abertura = $abertura;
        $this->tieneochava = $tieneochava;
        $this->tipoabertura = $tipoabertura;
    }



    /**

     * Build the message.

     *

     * @return $this

     */

    public function build()

    {

        return $this->view('page.solicitud')->with([

                            'nombre' => $this->nombre,
                            'email' => $this->email,
                            'telefono' => $this->telefono,
                            'localidad' => $this->localidad,
                            'direccion' => $this->direccion,
                            'descripcion' => $this->descripcion,
                            'tipodeposte' => $this->tipodeposte,
                            'altura1' => $this->altura1,
                            'altura2' => $this->altura2,
                            'altura3' => $this->altura3,
                            'altura4' => $this->altura4,
                            'apertura' => $this->apertura,
                            'calibre' => $this->calibre,
                            'largolateral' => $this->largolateral,
                            'imagen' => $this->imagen,
                            'cantidadlados' => $this->cantidadlados,
                            'abertura' => $this->abertura,
                            'tieneochava' => $this->tieneochava,
                            'tipoabertura' => $this->tipoabertura

                        ]);

    }

}

