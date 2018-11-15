<?php
class carService {
    
    private $dbh_singleton = false;
    
    public function __construct() {
        
    }
    
//     /*
//      * return car object given a car id
//      */
//     public function getById( $id) {
        
//         $sql = "SELECT * FROM cars.model WHERE make = {$make_entity->id}";
        
//         $stmt = $this->getDBH()->query($sql);
        
//         while ($row = $stmt->fetch()) {
//             $models_return_array[] = $row;
//         }

        
//     }
    
    /**
     * Return Make object given an id
     * @param  $id
     * @return 
     */
    public function getModelById( $id ) {
        
        $sql = "SELECT * FROM cars.model WHERE id = '$id'";
        
        $stmt = $this->getDBH()->query($sql);
        
        return $stmt->fetch();
    }
    
    /*
     * Returns array of car model objects given a make entity
     * @param MakeEntity
     * return array
     */
    public function getModelsFromMake( $make_id ) {

        $models_return_array = array();
        
        $sql = "SELECT id, name FROM cars.model WHERE make_id = '$make_id'";
       
        $stmt = $this->getDBH()->query($sql);
        
        while ($row = $stmt->fetch()) {

            $models_return_array[] = $row;
            
        }
//         var_dump($models_return_array); exit;        
        return json_encode( $models_return_array ); // array( 'Fiesta', 'Fusion' ) );
        
    }
    
    //singleton
    private function getDBH(){  
        
        if( false === $this->dbh_singleton){
            
            $dsn = 'mysql:host=127.0.0.1;dbname=cars;port=8889';
            
            $this->dbh_singleton = new PDO($dsn, 'root', 'public');
            
        } 
            
        return $this->dbh_singleton;
            
    }
}
