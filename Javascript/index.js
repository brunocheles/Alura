import {Cliente} from "./Cliente.js";
import {ContaCorrente} from "./ContaCorrente.js";

const cliente1 = new Cliente();
cliente1.nome = "Bruno";
cliente1.cpf = 46514026826;
const cliente2 = new Cliente();
cliente2.nome = "Ana";
cliente2.cpf = 44448954835;

const contaCorrenteCliente1 = new ContaCorrente();
contaCorrenteCliente1.agencia = 3003;
contaCorrenteCliente1.cliente = cliente1;
const contaCorrenteCliente2 = new ContaCorrente();
contaCorrenteCliente2.agencia = 3004;
contaCorrenteCliente2.cliente = cliente2;


console.log(contaCorrenteCliente1);
console.log(contaCorrenteCliente2); 

console.log(cliente1.nome, contaCorrenteCliente1.mostraSaldo);
console.log(cliente2.nome, contaCorrenteCliente2.mostraSaldo);
console.log(contaCorrenteCliente1.mostraAgencia);

cliente1.mudaNome = "Bruno Cheles";
console.log(cliente1.nome, contaCorrenteCliente1.mostraSaldo);

contaCorrenteCliente2.depositar(200);
console.log(cliente2.nome, contaCorrenteCliente2.mostraSaldo);
contaCorrenteCliente2.sacar(50);
console.log(cliente2.nome, contaCorrenteCliente2.mostraSaldo); 