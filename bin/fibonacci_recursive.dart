void main() {
  List<int> num = [0];

  for (int i = 0; i < 10; i++) {
    i < 1
        ? num.add(num[i] + 1)
        : i > 1
            ? num.add(num[i - 1] + num[i - 2])
            : 'Erro ao calcular Fibonacci';
    print('Sequencia Fibonacci $i: ${num[i]}');
  }
}
