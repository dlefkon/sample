<?php 

class carEntity{
    
    private $id;
    private $make_id;
    private $model_id;
    private $image;
    private $name;

	public function __construct(){
	
	}
	
	public function getId( $id) {
	    
	    return $this->id;
	    
	}
	
	public function setId( $id) {
	    
	    $this->id = $id;
	    
	}
	
	public function getMakeId() {
	    
	    return $this->make_id;
	    
	}
	
	public function setMakeId($id) {
	    
	    $this->make_id = $id;
	}
	
	public function getModelId() {
	    
	    return $this->model_id;
	}
	
	public function setModelId( $id) {
	    
	    $this->model_id = $id;
	}
	
	public function getImage() {
	    return $this->image;
	    
	}
	
	public function setImage($image) {
	    
	    $this->image = $image;
	}
	
	public function getName() {
	    return $this->name;
	}
	
	public function setName( $name ) {
	    
	    $this->name = $name;
	}
	
	public function __toString() {
	    return $this->getName();
	}
    
}