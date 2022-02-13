<?php
 
namespace App\Models;
 
use Illuminate\Database\Eloquent\Model;
 
class Student extends Model
{
    protected $fillable = [
        'id_work_center', 
        'matricula',
        'activo',
        'nombre',
        'ape_paterno',
        'ape_materno',
        'genero',
        'generacion',
        'municipio',
        'pais',
        'fecha_nacimiento',
    ];

    public function workcenter()
    {
        return $this->hasOne(WorkCenter::class, 'id', 'id_work_center');
    }
}

