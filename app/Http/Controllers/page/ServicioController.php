<?php

namespace App\Http\Controllers\page;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\ServContenido;
use App\ServDestacado;
use App\ServItem;
use App\Cuenta;

class ServicioController extends Controller
{
	// URL SERVICIOS //
	public function index()
	{
    $servcontenido = ServContenido::all();
    $servdestacados = ServDestacado::orderBy('orden','asc')->get();
    $servitems = ServItem::orderBy('orden','asc')->get();
		$active='servicios';
    $cont = '0';
		return view('page.servicios', compact('servcontenido','servdestacados','servitems','active', 'cont'));
	}

	// URL SERVICIO //
	public function validateCuenta(Request $request)
	{	
		if(isset($request->contrasena))
		{
			$formulario = new Cuenta();
			$form_email = $request->email;
			$form_passw = $request->contrasena;
	        $frm_datos = Cuenta::where('email', $form_email)->where('contrasena', $form_passw)->first();
          /*$frm_name = Cuenta::where('email', $form_email)->first();
          $frm_name = Cuenta::orderBy('id','asc')->get();*/
        if(count($frm_datos)!= 0){          
              $active='listas';
              $servicios = Servicio::orderBy('orden','asc')->get();              
              return view('page.servicio', compact('servicios','active','frm_datos'));
          }
        }
    return redirect()->back();
	}
  
  public function buscar(Request $request)
    {
      $active='novedades';
        $buscar = $request->buscar;

        $categorias = Categoria::orderBy('orden','asc')->get();
        $categorys = Categoria::orderBy('orden','asc')->get();

        $novedades = Novedad::where('titulo',$buscar)->orWhere('titulo','like','%'.$buscar.'%')->get();   

        if(count($novedades)== 0){
          $novedades = Novedad::where('breve',$buscar)->orWhere('breve','like','%'.$buscar.'%')->get();  
        }

        return view('page.novedades', compact('novedades','categorias','categorys','active'));
    }





}