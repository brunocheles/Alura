class Transferencia {
  final double valor;
  final String numeroConta;

  Transferencia(
    this.valor,
    this.numeroConta,
  );

  @override
  String toString() {
    return 'TransferĂȘncia{valor: $valor, numeroConta: $numeroConta}';
  }
}
