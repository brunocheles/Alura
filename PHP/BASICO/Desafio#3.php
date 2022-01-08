<?php
    echo ("DESAFIO IMC".PHP_EOL);

    $altura = 1.7;
    $massa = 90;
    $imc = ($massa / ($altura**2));

    echo (PHP_EOL."Seu imc é de $imc.");
    if ($imc <= 18.5)
        echo (" Seu peso está abaixo do ideal.");
    elseif ($imc > 18.5 && $imc <= 24.9)
        echo (" Seu peso está ideal.");
    elseif ($imc > 24.9 && $imc <= 29.9)
        echo (" Seu peso está acima do ideal.");
    else
        echo (" Você está obeso.");
?>