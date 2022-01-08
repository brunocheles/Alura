<?php
    echo("\n\nCHAMAR ARQUIVOS");
    echo PHP_EOL;
    //include ('FuncoesESubrotinas.php'); //Chama o arquivo informado, como se fosse uma biblioteca sem ser obrigatório sua existência
    //require ('FuncoesESubrotinas.php'); // Chama o arquivo informado, como se fosse uma biblioteca e é obrigatório sua existência
    require_once ('FuncoesESubrotinas.php'); // Chama o arquivo informado, como se fosse uma biblioteca, é obrigatório sua existência e só chama o arquivo uma vez, sem repeti-lo
    $contasCorrentes = [
        '123.456.789-10' => [
            'titular' => 'Maria',
            'saldo' => 10000
        ],
        '123.456.789-11' => [
            'titular' => 'Alberto',
            'saldo' => 1500
        ],
        '123.456.789-12' => [
            'titular' => 'Vinicius',
            'saldo' => 1000
        ]
    ];

    $contasCorrentes['123.456.789-10'] = sacar($contasCorrentes['123.456.789-10'],1700);
    $contasCorrentes['123.456.789-11'] = depositar($contasCorrentes['123.456.789-11'],1700);

    titularComLetrasMaiusculas($contasCorrentes['123.456.789-12']);

    echo PHP_EOL;
    foreach ($contasCorrentes as $cpf => $conta) {
        exibeMensagem("$cpf {$conta['titular']} {$conta['saldo']}");
    }

    echo PHP_EOL;
    //FUNÇÃO LIST - Armazena os dados do índice do array em uma variável
    foreach ($contasCorrentes as $cpf => $conta) {
        //list('titular' => $titular, 'saldo' => $saldo) = $conta;// Função por extenso
        ['titular' => $titular, 'saldo' => $saldo] = $conta; // Função simplificada
        exibeMensagem("$cpf $titular $saldo");
    }

    echo PHP_EOL;
    //FUNÇÃO UNSET - Remover um índice do array
    unset($contasCorrentes['123.456.789-12']);
    foreach ($contasCorrentes as $cpf => $conta) {
        ['titular' => $titular, 'saldo' => $saldo] = $conta; 
        exibeMensagem("$cpf $titular $saldo");
    }
    
    echo PHP_EOL;
    //HTML COM PHP
    echo "<ul>";
    foreach ($contasCorrentes as $cpf => $conta) {
        exibeConta($conta);
    }
    echo "</ul>";
?>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <h1>Contas Correntes</h1>

    <dl>
        <?php foreach($contasCorrentes as $cpf => $conta) { ?>
        <dt>
            <h3><?=$conta['titular']?> - <?=$cpf;?></h3>
        </dt>
        <dd>
            Saldo: <?=$conta['saldo'];?>
        </dd>
        <?php } ?>
    </dl>
</body>
</html>