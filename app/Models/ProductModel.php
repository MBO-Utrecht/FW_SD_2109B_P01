<?php
    class ProductModel
    {
        private Database $Db;

        /**
         * Constructor ProductModel
         * @param [type] $db
         */
        public function __construct(Database $db = new Database)
        {
            $this->Db = $db;
        }

        /**
         * Fetch the all products from database.
         * @return mixed
         */
        public function getProducts() : array
        {
            try
            {
                // Use sql script to fetch all products from storemysql database.
                $getAllProductsQuery = "";

                // Set up the query of products
               
                // Assign the result of database query to local variable.

                // Return the result.
            }
            catch(PDOException $ex) 
            {
                // Log line
                
                // die line
                
            }
        }

         /**
         * Fetch the selected product from database.
         * @param [type] $id
         * @return ProductEntity
         */
        public function getProductInfoById(int $id) : ProductEntity
        {
            try
            {
                // Use sql script to get the selected row of product from database storemysql.
                $getSelectedProduct = "";

                // Setup the query of products

                // Bind the id of the selected product to Id field of database
               
                // Assign the result of database query to local variable.

                // Map the row form database to product object.

                // Return the result.
            }
            catch(PDOException $ex)
            {
                // Log line
                
                // die line
            }
        }
    }
?>