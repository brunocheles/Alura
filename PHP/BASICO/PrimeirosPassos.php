<?php
    echo ("Primeiro código");
    echo ("\n Olá, Mundo!");

    echo ("\n\nVariáveis");
    $idade = 22;
    echo ("\n " . $idade);
    $idade = 23;
    echo ("\n " . $idade);

    echo ("\n\nOperadores Matemáticos");
    $soma = 5 + 2;
    $subtracao = 5 - 2;
    $multiplicacao = 5 * 2;
    $divisao = 5 / 2;
    $elevacao = 5 ** 2;
    $resto = 5 % 2;
    echo ("\n $soma");
    echo ("\n $subtracao");
    echo ("\n $multiplicacao");
    echo ("\n $divisao");
    echo ("\n $elevacao");
    echo ("\n $resto");

    echo ("\n\nTipos de Dados\n ");
    $inteiro = 22;
    $decimal = 22.2;
    $texto = "Ola, Mundo!";
    $booleano = true;
    echo gettype($inteiro);
    echo ("\n ");
    echo gettype($decimal);
    echo ("\n ");
    echo gettype($texto);
    echo ("\n ");
    echo gettype($booleano);

    echo ("\n\nVariáveis em Strings");
    $teste = "VARIAVEL TESTE";
    echo ("\n ".'Concatenando usando o ponto . '.$teste);
    echo ("\n Sem concatenar, apenas usando aspas duplas. $teste");
    echo (PHP_EOL.' Para quebrar linha da melhor forma, utiliza-se o PHP_EOL ao invés do \n, pois é aceito em sistemas diferentes.');
    echo (PHP_EOL.' Para usar aspas, pode usar o "\" para isso.');
    echo (PHP_EOL."  Exemplo: \"$teste\"");

    echo ("\n\nTomadas de decisão");
    echo (PHP_EOL.PHP_EOL."IF".PHP_EOL);
    $idade = 22;
    echo (PHP_EOL." Você só pode entrar se tiver mais que 18 anos");
    if ($idade >= 18)
        echo (PHP_EOL." Você tem $idade anos. Pode entrar!");
    else
        echo (PHP_EOL." Sua idade é inferior a 18 anos, entrada negada.");

    echo ("\n\nLoops");
    echo(PHP_EOL.PHP_EOL."WHILE".PHP_EOL);
    $contador = 1;
    while ($contador <= 15){
        echo (" #$contador".PHP_EOL);
        $contador++;
    }
    echo(PHP_EOL.PHP_EOL."FOR".PHP_EOL);
    for($contador = 1;$contador <= 15;$contador++) {
        echo (" #$contador".PHP_EOL);
    }

?>