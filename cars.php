<?php

error_reporting(E_ALL);
ini_set('display_errors', 1);

require( 'car_service.php' );

$car_service = new carService();

if( isset( $_GET['make_id'] ) ) {
    
    $car_make_id = $_GET['make_id'];
    $car_model_objects_array = $car_service->getModelsFromMake($car_make_id);
    echo json_encode( $car_model_objects_array );
    
} elseif(isset( $_GET['model_id'] ) )  {
    
    $car_model_id = $_GET['model_id'];
    $car_model_object = $car_service->getModelById($car_model_id);
//     var_dump($car_model_object); exit;    
    echo $car_model_object['image'];
} else {
    echo 'nothing set';
}

// $car_service = new carService();

// $make_object = $car_service->getById( $car_make_value );

exit;
