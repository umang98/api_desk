<?php
include '../include/Controller.php';
$controller = $_GET['controller'];
$function = $_GET['function'];
$parameter = $_GET['parameter'];

if(isset($controller,$function,$parameter))
{

    $controller_obj = new $controller;
    $controller_obj->$function($parameter);
}
else
{
    echo "false";
}
?>