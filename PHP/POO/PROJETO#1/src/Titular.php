<?php
    class Titular {
        private Cpf $cpf;
        private string $nome;

        public function __construct(CPF $cpf,string $nome) {
            $this->validaNome($nome);
            $this->cpf = $cpf;
            $this->nome = $nome;
        }
        public function recuperaCpf(): string {
            return $this->cpf->recuperaNumero();
        }
        public function recuperaNome(): string {
            return $this->nome;
        }
        private function validaNome(string $nome) {
            if(strlen($nome) < 5) {
                echo ("Nome precisa ter pelo menos 5 caracteres");
                exit();
            }
        }
    }
?>