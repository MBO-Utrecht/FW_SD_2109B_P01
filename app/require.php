<?php
    // Require libraries from folder libraries
    require_once 'Config/Config.php';
    require_once 'Libraries/Core.php';
    require_once 'Libraries/Database.php';
    require_once 'Helpers/DateTimeHelper.php'; 
    require_once 'Helpers/ProductHelper.php';
    require_once 'Helpers/FormatTextHelper.php'; 
    require_once 'Libraries/BaseController.php';
    require_once 'Entities/ProductEntity.php';
    require_once 'Enumerations/EnumTypeMessage.php';
    require_once 'Validators/ProductValidator.php';

    // Instantiate core class
    $init = new Core();
?>
