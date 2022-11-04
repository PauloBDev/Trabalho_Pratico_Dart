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
    return '''\n
    Apolice: 
      Nome: $nomeseguradora
      Murada: $muradaseguradora 
      Criada em: $ano\n''';
  }
}
