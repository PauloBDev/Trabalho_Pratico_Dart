void main() {
  var sum = 0; // variavel para ser usada na soma dos números
  List<int> list = [
    for (int i = 101; i < 200; i++) i,
  ]; // intervalo
  List<int> b = []; // lista final com os primos

  void checkPrime(int num) {
    int i, m = 0, flag = 0;
    m = num ~/ 2;
    for (i = 2; i <= m; i++) {
      // para cada número dividir por um número de i
      if (num % i == 0) {
        //verificar se o resto é 0
        flag = 1;
        //se o resto for 0 dar uma flag ao número
        break;
      }
    }
    if (flag == 0) {
      //para os numeros que não foram flagged
      b.add(num);
      //adicionar a segunda lista
    }
  }

  // list.forEach((e) => checkPrime(e));       utilização de um .forEach
  //                                            aprendido apenas na pergunta 3
  for (int i = 0; i < list.length; i++) {
    checkPrime(list[i]);
    //para cada número verificar se é primo
  }
  print('\n');
  // b.forEach((e) => print('$e é um número primo.')); utilização de um .forEach
  //                                                     aprendido apenas
  //                                                          na pergunta 3
  for (int i = 0; i < b.length; i++) {
    // correr a lista
    print('${b[i]} é um número primo.'); // se é primo dizer
  }
  for (int i = 0; i < b.length; i++) {
    // correr a lista
    sum += b[i]; // somar cada elemento
  }
  print('Sum: $sum'); // sair a soma
  print('Average: ${sum / b.length}'); // total da soma a dividir
  //pelo numero de resultados
  print('\n');
}
