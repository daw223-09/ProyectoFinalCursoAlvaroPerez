<?php

use App\Http\Controllers\ClaseController;
use App\Http\Controllers\ClasesUsuarioController;
use App\Http\Controllers\MaterialController;
use App\Http\Controllers\UserController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::get("/", [UserController::class, "index"]);

Route::get("/user", [UserController::class, "user"])->middleware("auth:api");
Route::get("/user/{id}", [UserController::class, "userById"]);

Route::post("/register", [UserController::class, "register"]);

Route::get("/clases", [ClaseController::class, "index"]);

Route::get("/reservaClases", [ClasesUsuarioController::class, "index"]);

Route::get("/index", [ClaseController::class, "index"]);
Route::get("/plazaClase/{clase}", [ClaseController::class, "plazaClase"]);
Route::post("/apuntado/{id}", [ClaseController::class, "actualizar"]);

Route::post("/claseUsuario", [ClasesUsuarioController::class, "create"]);
Route::delete("/claseUsuarioDelete/{idUsuario}/{idClase}", [ClasesUsuarioController::class, "delete"]);
Route::get("/getClaseUsuario/{idUsuario}", [ClasesUsuarioController::class, "getClaseUsuario"]);

Route::get("/material", [MaterialController::class, "index"]);
Route::get("/materialPorNombre/{material}", [MaterialController::class, "getMaterialPorNombre"]);
