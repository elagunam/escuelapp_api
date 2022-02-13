<?php

namespace App\Http\Controllers;

use App\Models\WorkCenter;
use Laravel\Lumen\Routing\Controller as BaseController;

class WorkCentersController extends BaseController
{
    public function getCentrosDeTrabajo(){
        $centrosDeTrabajo = WorkCenter::get();
        if(sizeof($centrosDeTrabajo) < 1){
            $response['status'] = false;
            $response['message'] = 'No se encontraron centros de trabajo';
            $response['centros_de_trabajo'] = [];
            return response($response);
        }

        $response['status'] = true;
        $response['message'] = 'Se encontraron centros de trabajo';
        $response['centros_de_trabajo'] = $centrosDeTrabajo;
        return response($response);
    }
}