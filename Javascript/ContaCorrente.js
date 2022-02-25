export class ContaCorrente {
    agencia;
    cliente;

    #saldo = 0;

    get mostraAgencia() {
        return this.agencia;
    }

    get mostraSaldo() {
        return this.#saldo;
    }

    sacar(valor) {
        if(this.#saldo >= valor) {
            this.#saldo -= valor;
        }
    }
    depositar(valor) {
        if(valor <= 0) {
            return;
        }
        this.#saldo += valor;
    }
    transferir (valor, conta) {
        const valorSacado = this.sacar(valor);
        conta.depositar(valorSacado);
    }
}