<?php
    class Cpf {
        private string $numero;

        public function __construct(string $numero) {
            $this->validaCpf($numero);
            $this->numero = $numero;
        }
        public function recuperaNumero(): string {
            return $this->numero;
        }
        private function validaCpf(string $numero) {
            $numerosCpf = preg_replace("/[^0-9]/", "", $numero);
            if(strlen($numerosCpf) <> 11) {
                echo ("Número de CPF inválido.");
                exit();
            }
        }
    }
?>