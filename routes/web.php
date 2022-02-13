<?php

/** @var \Laravel\Lumen\Routing\Router $router */

use App\Http\Controllers\WorkCentersController;

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It is a breeze. Simply tell Lumen the URIs it should respond to
| and give it the Closure to call when that URI is requested.
|
*/

$router->get('/', function () use ($router) {
    return $router->app->version();
});

$router->get('/get/centros', 'WorkCentersController@getCentrosDeTrabajo');
$router->get('/get/alumnos[/{size}]', 'StudentsController@getAlumnos');
$router->get('/get/calificaciones/alumno/{id}', 'StudentsController@getCalificacionesAlumno');
$router->get('/get/alumno/{matricula}', 'StudentsController@getInfoAlumno');
$router->post('/set/calificaciones/alumno', 'StudentsController@saveCalificaciones');

