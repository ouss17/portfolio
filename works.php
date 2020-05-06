<?php
    include "classes/Database.class.php";
    include "classes/Portfolio.class.php";

$portfolio = new Portfolio;
$works = $portfolio->getAllWorks();


    $template = 'works';
    include "phtml/layout.phtml";
