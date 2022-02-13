<?php
use App\Models\Student;
 
$students = Student::get();
 
foreach ($students as $student) {
    return $student;
}