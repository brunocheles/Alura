<?php
    namespace Alura\Banco\Modelo\Conta;

    class ContaCorrente extends Conta {
        protected function percentualTarifa(): float {
            return 0.05;
        }
    
        public function transferir(float $valorTransferencia, Conta $contaDestino): void {
            if ($valorTransferencia > $this->saldo) {
                echo ("Saldo insuficiente");
                return;
            }

            $this->sacar($valorTransferencia);
            $contaDestino->depositar($valorTransferencia);
        }
    }
?>