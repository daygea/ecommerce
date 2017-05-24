<?php

namespace App\Http\Utilities;

class States {

    /**
     * Array of Countries.
     *
     * @var array
     */
    protected static $states =
        [
             '' => '',
             'Abia' => 'Abia',
             'Abuja' => 'Abuja',
             'Anambra' => 'Anambra',
             'Adamawa' => 'Adamawa',
             'Akwa Ibom' => 'Akwa Ibom',
             'Bauchi' => 'Bauchi', 
             'Bayelsa' => 'Bayelsa',
             'Benue' => 'Benue',  
             'Borno' => 'Borno', 
             'Cross River' => 'Cross River', 
             'Delta' => 'Delta',  
             'Edo' => 'Edo',  
             'Ekiti' => 'Ekiti', 
             'Ebonyi' => 'Ebonyi', 
             'Enugu' => 'Enugu', 
             'Gombe' => 'Gombe', 
             'Imo' => 'Imo',  
             'Kano' => 'Kano',  
             'Lagos' => 'Lagos', 
             'Nassarawa' => 'Nassarawa', 
             'Jigawa' => 'Jigawa',   
             'Kebbi' => 'Kebbi',   
             'Kaduna' => 'Kaduna', 
             'Kogi' => 'Kogi', 
             'Katsina' => 'Katsina', 
             'Kwara' => 'Kwara',  
             'Niger' => 'Niger',   
             'Ogun' => 'Ogun',  
             'Ondo' => 'Ondo',   
             'Osun' => 'Osun',   
             'Oyo' => 'Oyo',   
             'Plateau' => 'Plateau', 
             'Rivers' => 'Rivers',    
             'Sokoto' => 'Sokoto',      
             'Taraba' => 'Taraba',      
             'Yobe' => 'Yobe',       
             'Zamfara' => 'Zamfara'  
        ];


    /**
     *  Return all the states.
     *
     * @return array
     */
    public static function all() {
        return array_keys(static::$states);
    }

}