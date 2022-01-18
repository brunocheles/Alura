<?php
    require_once 'autoload.php';

    use Alura\Banco\Modelo\Conta\Titular;
    use Alura\Banco\Modelo\Conta\Conta;
    use Alura\Banco\Modelo\Endereco;
    use Alura\Banco\Modelo\Cpf;

    $endereco = new Endereco('Ribeirão Preto','Alexandre Balbo','Rua 1','154a');
    $bruno = new Titular(new Cpf('123.456.789-10'),'Bruno',$endereco);
    $contaBruno = new Conta($bruno);
    $contaBruno->depositar(1000);
    $contaBruno->sacar(200);
    
    echo ($contaBruno->recuperaSaldo());
    echo (PHP_EOL.$contaBruno->recuperaCpfTitular());
    echo (PHP_EOL.$contaBruno->recuperaNomeTitular());
    echo (PHP_EOL.Conta::recuperaNumeroDeContas());

    $amanda = new Titular(new Cpf('123.456.789-11'),'Amanda',$endereco);
    $contaAmanda = new Conta($amanda);
    echo (PHP_EOL.Conta::recuperaNumeroDeContas());

    $outroEndereco = new Endereco('Ribeirão Preto','Alexandre Balbo','Rua 2','154b');
    $gustavo = new Titular(new Cpf('123.456.789-12'),'Gustavo',$outroEndereco);
    $contaGustavo = new Conta($gustavo);
    echo (PHP_EOL.Conta::recuperaNumeroDeContas());

    unset($contaAmanda);
    echo (PHP_EOL.Conta::recuperaNumeroDeContas());
?>