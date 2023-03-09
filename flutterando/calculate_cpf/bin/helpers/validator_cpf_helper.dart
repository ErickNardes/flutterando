class CalculateCpf {
  void calculateDigitone(String cpf) {
    cpf = cpf.replaceAll(RegExp(r'[^\d]'), '');
    if (cpf.length != 11) {
      print('CPF inválido.');
      return;
    }

    if (RegExp(r'^(\d)\1*$').hasMatch(cpf)) {
      print('CPF inválido.');
      return;
    }

    int index = 0;
    for (int i = 0; i < 9; i++) {
      index += int.parse(cpf[i]) * (10 - i);
    }

    int resto = index % 11;
    int firstDigit = (resto < 2) ? 0 : 11 - resto;

    if (int.parse(cpf[9]) != firstDigit) {
      print('CPF inválido.');
      return;
    }

    index = 0;
    for (int i = 0; i < 10; i++) {
      index += int.parse(cpf[i]) * (11 - i);
    }

    resto = index % 11;
    int secondDigit = (resto < 2) ? 0 : 11 - resto;

    if (int.parse(cpf[10]) != secondDigit) {
      print('CPF inválido.');
      return;
    }

    print('CPF válido. $cpf');
  }
}
