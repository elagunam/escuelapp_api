<?php

namespace App\Http\Controllers;

use App\Models\Student;
use Illuminate\Http\Request;

use App\Models\WorkCenter;
use Laravel\Lumen\Routing\Controller as BaseController;

use Illuminate\Support\Facades\DB;

class StudentsController extends BaseController
{
    public function getAlumnos(Request $request){
        $sizeReturn = 50;
        if($request->size){
            $sizeReturn = $request->size;
        }
        $elementsToget = Student::with('workcenter');

        if($request->filled('buscar')){
            $elementsToget->where('matricula', 'like', "%$request->buscar%")
            ->orWhere('nombre', 'like', "%$request->buscar%")
            ->orWhere('ape_paterno', 'like', "%$request->buscar%")
            ->orWhere('ape_materno', 'like', "%$request->buscar%");
        }

        $alumnos = $elementsToget->paginate($sizeReturn);

        $response['status'] = true;
        $response['message'] = 'Se encontraron alumnos';
        $response['alumnos'] = $alumnos;
        return response($alumnos);
    }

    public function getCalificacionesAlumno(Request $request){
        $idAlumno = $request->id;

        $alumno = Student::where('id','=',$idAlumno)->get();
        if(sizeof($alumno) < 1){
            $response['status'] = false;
            $response['message'] = 'No se encontró el alumno indicado';
            return response($response);
        }

        $calificacionesAlumno = DB::select("SELECT * FROM materias as m
        LEFT JOIN calificaciones c on m.id = c.id_materia AND c.id_student = $idAlumno
        ORDER BY m.nombre_materia");
        if(sizeof($calificacionesAlumno) < 1){
            $response['status'] = false;
            $response['message'] = 'No hay materias configuradas en el sistema';
            return response($response);
        }

        $response['status'] = true;
        $response['message'] = 'Información localizada';
        $response['alumno'] = $alumno[0];
        $response['calificaciones'] = $calificacionesAlumno;
        return response($response);
    }


    public function saveCalificaciones(Request $request){

        if(!$request->filled('id_alumno')){
            $response['status'] = false;
            $response['message'] = 'Los parámetros para guardar las calificaciones son incorrectos';
            return response($response);
        }

        if(!$request->filled('calificaciones')){
            $response['status'] = false;
            $response['message'] = 'Debe indicar las calificaciones de las materias para calcular el promedio y registrarlas';
            return response($response);
        }

        $calificacionesAGuardar = [];

        foreach ($request->calificaciones as $key => $materia) {
            $calificacionesDeMateria = [];
            if(!isset($materia['id_materia'],$materia['calificacion_p1'], $materia['calificacion_p2'], $materia['calificacion_p3'])){
                $response['status'] = false;
                $response['message'] = 'Debe indicar la calificación de los tres parciales para continuar';
                return response($response);
            }
            $calificacionesDeMateria['id_materia'] = $materia['id_materia'];
            $calificacionesDeMateria['id_student'] = $request->id_alumno;
            $calificacionesDeMateria['calificacion_p2'] = $materia['calificacion_p2'];
            $calificacionesDeMateria['calificacion_p1'] = $materia['calificacion_p1'];
            $calificacionesDeMateria['calificacion_p3'] = $materia['calificacion_p3'];
            $calificacionesAGuardar[] = $calificacionesDeMateria;
        }

        $savedCalifs = DB::table('calificaciones')->insert($calificacionesAGuardar);
        if(!$savedCalifs){
            $response['status'] = false;
            $response['message'] = 'No se pudieron guardar las calificaciones';
            return response($response);
        }

        $response['status'] = true;
        $response['message'] = 'Calificaciones registradas correctamente';
        return response($response);
    }


    public function getInfoAlumno(Request $request){
        $matricula = $request->matricula;

        $alumno = Student::with('workcenter')->where('matricula','=',$matricula)->get();
        if(sizeof($alumno) < 1){
            $response['status'] = false;
            $response['message'] = 'No se encontró el alumno indicado';
            return response($response);
        }

        $response['status'] = true;
        $response['message'] = 'Información localizada';
        $response['alumno'] = $alumno[0];
        return response($response);
    }

    //TBC130001008
}