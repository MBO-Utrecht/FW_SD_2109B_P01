<?php
    class Product extends BaseController 
    {

        public function __construct() 
        {
            // Hier moet je de Product model aanroepen.
            $this->ProductModel = $this->model('ProductModel');
        }

        /**
         * Display all products on index product view.
         * @return void
         */
		public function index()
		{
            if($_SERVER['REQUEST_METHOD'] == 'GET')
            {
                // Fetch all products from product model.
                

                // Assign the result data from model to local variable.
              

                // Send the data to view Product/index.
      
            }
		}

        /**
         * Display the selected product on details product view.
         * @param integer $id
         * @return void
         */
        public function details(int $id)
        {
            if($_SERVER['REQUEST_METHOD'] == 'GET')
            {
                // Fetch selected product by Id from product model.

                // Send the selected product to view product/details.
            }
        }
    }
?>