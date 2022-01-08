<?php

    $string = "Teste de integração com PHP";
    echo mb_strlen($string).PHP_EOL;
    echo mb_strtoupper(mb_strtoupper($string)).PHP_EOL;
    echo mb_convert_case($string, MB_CASE_TITLE);