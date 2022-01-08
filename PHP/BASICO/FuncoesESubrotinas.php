<?php
    //FUNÇÕES E SUBROTINAS
    function exibeMensagem($mensagem) {
        echo ("<br> $mensagem");
    }
    function sacar(array $conta,float $valorSaque) {
        if($conta['saldo'] < $valorSaque) {
            exibeMensagem("Você não pode sacar este valor!");
        }else {
            exibeMensagem("Saque realizado com sucesso"); 
            $conta['saldo'] -= $valorSaque;
        }
        return $conta;
    }
    function depositar(array $conta,float $valorDeposito) {
        if($valorDeposito <= 0) {
            exibeMensagem("Você não pode depositar este valor!");
        }else {
            exibeMensagem("Deposito realizado com sucesso"); 
            $conta['saldo'] += $valorDeposito;
        }
        return $conta;
    }
    //PARÂMETRO COMO REFERÊNCIA
    function titularComLetrasMaiusculas(array &$conta) {// O & passa o parâmetro como referência, ou seja, troca diretamente o dado fornecido
        $conta['titular'] = mb_strtoupper($conta['titular']);
    }
    function exibeConta(array $conta){
        ['titular' => $titular, 'saldo' => $saldo] = $conta; 
        echo "<li> Titular: $titular, Saldo: $saldo </li>";
    }
?>
