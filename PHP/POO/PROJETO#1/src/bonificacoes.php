<?php
    require_once 'autoload.php';

    use Alura\Banco\Modelo\Cpf;
    use Alura\Banco\Modelo\Funcionario;
    use Alura\Banco\Service\ControladorDeBonificacoes;

    $umFuncionario = new Funcionario(
        'Bruno Cheles',
        new Cpf('123.456.789-10'),
        'Desenvolvedor'
        ,1800
    );
    $umaFuncionaria = new Funcionario(
        'Poliana',
        new Cpf('123.456.789-11'),
        'Programadora'
        ,2000
    );

    $controlador = new ControladorDeBonificacoes();
    $controlador->adicionaBonificacaoDe($umFuncionario);
    $controlador->adicionaBonificacaoDe($umaFuncionaria);

    echo $controlador->recuperaTotal();
?>