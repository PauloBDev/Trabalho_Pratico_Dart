class Seguradora {
  String? nomeseguradora;
  String? muradaseguradora;
  int? ano;

  Seguradora({
    this.nomeseguradora,
    this.muradaseguradora,
    this.ano,
  });

  @override
  String toString() {
    return '''Seguradora:
      Nome: $nomeseguradora
      Murada: $muradaseguradora 
      Criada em: $ano\n''';
  }
}
