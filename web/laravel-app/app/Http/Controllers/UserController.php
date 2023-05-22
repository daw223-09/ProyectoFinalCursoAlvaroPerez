<?php

namespace App\Http\Controllers;

use App\Http\Requests\UserRegisterRequest;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class UserController extends Controller
{
    //
    function index(){
        return User::all();
    }

    function user(Request $request){
        return $request->user();
    }

    function userById(Request $request){
        $id_usuario = $request->id;
        $usuario = User::where("id", $id_usuario)->get();
        return $usuario;
    }

    function register(UserRegisterRequest $request){
        User::create([
            "name" => $request->name,
            "email" => $request->email,
            "password" => Hash::make($request->password)
        ]);

        return "User created";
    }
}