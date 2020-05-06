<?php

    include 'classes/Database.class.php';
    include 'classes/Portfolio.class.php';
    $portfolio = new Portfolio;
    $languages = $portfolio->getAllTechnosLanguages();
    $technos = $portfolio->getAllLibFrame();
    $works = $portfolio->getAllWorks();
    $travail = $portfolio->getOneWork();
    

    
    $template = 'index';
    include 'phtml/layout.phtml';
