<?php
    /*FUNÇÃO SPL_AUTOLOAD_REGISTER
    Substitui a utilização de vários require no código por uma função que cria os require
    através dos USE do código, ou seja, faz o require de acordo com o que é utilizado
    na página.
    */
    spl_autoload_register(function (string $nomeCompletoDaClasse) {
        $caminhoArquivo = str_replace('Alura\\Banco', 'src', $nomeCompletoDaClasse);
        $caminhoArquivo = str_replace('\\',DIRECTORY_SEPARATOR,$caminhoArquivo);
        $caminhoArquivo .= '.php';

        if (file_exists($caminhoArquivo)) {
            require_once $caminhoArquivo;
        }
    });
?>