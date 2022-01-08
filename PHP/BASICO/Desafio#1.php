<?php
    echo ("DESAFIO NÚMEROS ÍMPARES".PHP_EOL);
    
    for($numero = 0;$numero <= 100;$numero++){
        if (($numero % 2) == 0)
            continue;
        else
            echo (" #$numero".PHP_EOL);
    }
?>