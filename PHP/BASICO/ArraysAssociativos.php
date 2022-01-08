<?php
    echo("\n\nARRAYS ASSOCIATIVOS");
    $conta1 = [
        'titular' => 'Bruno',
        'saldo' => 1800
    ];
    $conta2 = [
        'titular' => 'Maria',
        'saldo' => 5000
    ];
    $conta3 = [
        'titular' => 'Vinicius',
        'saldo' => 1400
    ];
    $contasCorrentes = [$conta1,$conta2,$conta3];

    for($i = 0;$i < count($contasCorrentes);$i++) {
        echo (PHP_EOL." Titular conta ".($i+1).": ".$contasCorrentes[$i]['titular']);
    }

    echo("\n\nADICIONANDO UM NOVO ITEM");
    $contasCorrentes[] = [ //Adiciona o item no próximo índice vazio, no caso o índice 0 e vem logo depois do índice $conta3
        'titular' => 'Ana',
        'saldo' => 1500
    ];

    for($i = 0;$i < count($contasCorrentes);$i++) {
        echo (PHP_EOL." Titular conta ".($i+1).": ".$contasCorrentes[$i]['titular']);
    }
?>