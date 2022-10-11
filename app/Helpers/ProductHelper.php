<?php
    class ProductHelper
    {
        /**
         * Create new empty product object.
         * @return ProductEntity
         */
        public static function createEmptyProductObject() : ProductEntity
        {
            $newProduct = new ProductEntity();

            return $newProduct;
        }

        /**
         * Map the selected database product row from to product object. 
         * @param mixed $selectedProduct
         * @return ProductEntity
         */
        public static function mapProductRowToObject(mixed $selectedProduct) : ProductEntity
        {
            $selectedProduct = new ProductEntity();

            return $selectedProduct;
        }

                /**
         * Set the values of input fields from the view to product object.
         * @param [type] $inputPost
         * @param string $methodType
         * @return ProductEntity
         */
        public static function setInputProductFieldsToProductObject($inputPost, string $methodType) : ProductEntity
        {
            $inputProduct = new ProductEntity();

            return $inputProduct;
        }
    }
?>