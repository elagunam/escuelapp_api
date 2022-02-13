<?php
 
namespace App\Models;
 
use Illuminate\Database\Eloquent\Model;
 
class WorkCenter extends Model
{
    protected $fillable = [
        'clave', 
        'nombre_ct',
        'clave_ct',
        'municipio',
        'encargado',
        'email_encargado',
    ];

    public function students()
    {
        return $this->hasMany(Student::class, 'id_work_center', 'id');
    }
}