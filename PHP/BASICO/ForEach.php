<?php
    echo("\n\nFOREACH");
    $contasCorrentes = [
        '123.456.789-10' => [
            'titular' => 'Bruno',
            'saldo' => 1800
        ],
        '123.456.789-11' => [
            'titular' => 'Maria',
            'saldo' => 5000
        ],
        '123.456.789-12' => [
            'titular' => 'Vinicius',
            'saldo' => 1400
        ]
    ];

    $i = 1;
    foreach ($contasCorrentes as $conta){
        echo (PHP_EOL." Titular da conta ".($i).": ".$conta['titular']);
        $i++;
    }
    $i = 1;
    foreach ($contasCorrentes as $cpf => $conta){
        echo (PHP_EOL." CPF do titular da conta ".($i).": ".$cpf);
        $i++;   
    }

    echo("\n\nADICIONANDO UM NOVO ITEM");
    $contasCorrentes['123.456.789-13'] = [ //Adiciona o item no próximo índice vazio, no caso o valor do índice vem informado, pois é os índices são strings
        'titular' => 'Ana',
        'saldo' => 1500
    ];
?>