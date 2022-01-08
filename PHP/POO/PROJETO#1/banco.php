<?php
    require_once 'src/Conta.php';
    require_once 'src/Titular.php';
    require_once 'src/Cpf.php';

    $bruno = new Titular(new Cpf('123.456.789-10'),'Bruno');
    $contaBruno = new Conta($bruno);
    $contaBruno->depositar(1000);
    $contaBruno->sacar(200);
    
    echo ($contaBruno->recuperaSaldo());
    echo (PHP_EOL.$contaBruno->recuperaCpfTitular());
    echo (PHP_EOL.$contaBruno->recuperaNomeTitular());
    echo (PHP_EOL.Conta::recuperaNumeroDeContas());

    $amanda = new Titular(new Cpf('123.456.789-11'),'Amanda');
    $contaAmanda = new Conta($amanda);
    echo (PHP_EOL.Conta::recuperaNumeroDeContas());

    $gustavo = new Titular(new Cpf('123.456.789-12'),'Gustavo');
    $contaGustavo = new Conta($gustavo);
    echo (PHP_EOL.Conta::recuperaNumeroDeContas());

    unset($contaAmanda);
    echo (PHP_EOL.Conta::recuperaNumeroDeContas());
?>