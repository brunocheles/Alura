<?php
    require_once 'autoload.php';

    use Alura\Banco\Modelo\Conta\{ContaCorrente,ContaPoupanca,Titular};
    use Alura\Banco\Modelo\{CPF,Endereco};

    $conta = new ContaCorrente(
        new Titular(
            new CPF('123.456.789-14'),
            'Guilherme Gonçalves',
            new Endereco('Ribeirão Preto','Ribeirão Verde','Rua dos Rapariga','123')
        )
     );
     $conta->depositar(500);
     $conta->sacar(100);

     echo $conta->recuperaSaldo();
?>