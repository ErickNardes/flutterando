import 'model/person_model.dart';

void main(List<String> arguments) {
  Person person1 = Person(name: 'Erick Nardes', height: 1.69, weight: 69.0);

  final imcCalculate = person1.weight / (person1.height * person1.height);
  void imcResult() {
    imcCalculate <= 18.6
        ? print('Abaixo do peso')
        : imcCalculate <= 25.0
            ? print('Peso ideal')
            : imcCalculate <= 30.0
                ? print('Levemente a cima do peso')
                : imcCalculate <= 35.0
                    ? print('obesidade Grau I')
                    : imcCalculate <= 40.0
                        ? print('Obesidade Grau II')
                        : print('Obesidade Grau III');
  }

  print('Ola ${person1.name}, com base em seus dados, seu IMC é: ${imcCalculate.toStringAsFixed(2)}');
  imcResult();
}
