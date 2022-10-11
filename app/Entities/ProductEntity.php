<?php
    /**
     * Database table Product fields 
     */
    class ProductEntity
    {
        // Voeg alle velden van Product tabel toe.
        private int $Id;
        
        /**
         * Magic get generator property.
         * @param [type] $property
         * @return void
         */
        public function __get($property) 
        {
            if (property_exists($this, $property)) 
            {
                return $this->$property;
            }
        }
    
        /**
         * Magic set generator property.
         * @param [type] $property
         * @param [type] $value
         */
        public function __set($property, $value) 
        {
            if (property_exists($this, $property)) 
            {
                $this->$property = $value;
            }
        }
    }
?>