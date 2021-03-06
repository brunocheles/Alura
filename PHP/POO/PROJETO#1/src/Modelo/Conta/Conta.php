<?php

    namespace Alura\Banco\Modelo\Conta;
    use Alura\Banco\Modelo\Conta\Titular;

    abstract class Conta {
        private $titular;
        protected float $saldo;
        private static int $numeroDeContas = 0;

        public function __construct(Titular $titular) {

            $this->titular = $titular;
            $this->saldo = 0;

            self::$numeroDeContas++;
        }
        public function __destruct() {
            self::$numeroDeContas--;
        }

        public function sacar(float $valorASacar) :void {
            $tarifaSaque = $valorASacar * $this->percentualTarifa();
            $valorSaque = $valorASacar + $tarifaSaque;

            if ($valorSaque > $this->saldo) {
                echo ("Saldo insuficiente");
                return;
            }
            $this->saldo -= $valorSaque;
        }
        public function depositar(float $valorDeposito): void{
            if ($valorDeposito < 0) {
                echo ("Não há como depositar um valor negativo.");
                return;
            }
            
            $this->saldo += $valorDeposito;
        }

        public function recuperaSaldo(): float {
            return $this->saldo;
        }
        public function recuperaNomeTitular(): string {
            return $this->titular->recuperaNome();
        }
        public function recuperaCpfTitular(): string {
            return $this->titular->recuperaCpf();
        }
        public static function recuperaNumeroDeContas(): int {
            return self::$numeroDeContas;
        }
        abstract protected function percentualTarifa(): float;
    }
?>