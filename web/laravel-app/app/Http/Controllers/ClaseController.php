<?php

namespace App\Http\Controllers;

use App\Models\Clase;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class ClaseController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return Clase::all();
    }

    function plazaClase(Request $request){

        $id_clase = $request->clase;
        $plazas = DB::table('clases')->select("plazas")->where('id', '=', $id_clase)->get();
        return $plazas;
    }

    function actualizar(Request $request){
        $clase = $request->bodyCombat;
        $id_clase = $clase["id"];
        $newPlazas = $clase["plazas"];
        $plazas = DB::table('clases')->where('id', '=', $id_clase)->update(array("plazas" => $newPlazas));
        return $plazas;
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
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
    public function show(Clase $clase)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Clase $clase)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Clase $clase)
    {
        //
    }
}
