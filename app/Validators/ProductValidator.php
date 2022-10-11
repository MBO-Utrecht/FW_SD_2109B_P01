<?php
    class ProductValidator
    {
        /**
         * Validat all the input fields of product for the create or update views.
         * @param ApplicantEntity $data
         * @return boolean
         */
        public static function validateProductInputFields(ProductEntity $data) : bool
        {  
            try
            {
                $isViewValid = false;

                return $isViewValid;
            }
            catch(Exception $ex)
            {
                
            }
        }   
    }
?>