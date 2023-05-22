<?php

namespace App\Http\Controllers;

use App\Models\ClasesUsuario;
use Illuminate\Http\Request;

class ClasesUsuarioController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        //
        return ClasesUsuario::all();
    }

    function clase(Request $request)
    {
        
        //return $request->user();
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create(Request $request)
    {
        $newClaseUsuario = $request->clase_usuario;
        //
        ClasesUsuario::create([
            "user_id" => $newClaseUsuario["id_usuario"],
            "clase_id" => $newClaseUsuario["id_clase"]
        ]);

        return "Reserva clase creada";
    }

    function getClaseUsuario(Request $request){

        $idUsuario = $request->idUsuario;
        $claseUsuario = ClasesUsuario::where('user_id', $idUsuario)->get();
        return $claseUsuario;
    }

    function delete(Request $request){
        $idUsuario = $request->idUsuario;
        $idClase = $request->idClase;
        ClasesUsuario::where('user_id', $idUsuario)->where('clase_id', $idClase)->delete();

        return "Clase Usuario borrada";
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(ClasesUsuario $clasesUsuario)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(ClasesUsuario $clasesUsuario)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, ClasesUsuario $clasesUsuario)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(ClasesUsuario $clasesUsuario)
    {
        //
    }
}
