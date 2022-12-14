<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});
Route::get('/check' ,  function() { 
    return response()->json(["Hello! you are using catalog service and it is running successfully :D "]);
});
Route::group(['namespace' => '\\App\Http\Controllers\\'], function(){
  Route::get('/', 'CatalogController@index');
  Route::get('/{id}', 'CatalogController@show');
});
