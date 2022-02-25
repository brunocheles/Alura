export class Cliente {
    nome;
    cpf;

    constructor() {
        console.log(`Cliente criado.`);
    }

    set mudaNome(valor) {
        this.nome = valor;
    }
}