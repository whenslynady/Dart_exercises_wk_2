
// Enumeration for the days of the week
enum DiaSemana {
  Lunes,
  Martes,
  Miércoles,
  Jueves,
  Viernes,
  Sábado,
  Domingo,
}

// Extension on int to check if the number is even
extension ParExtension on int {
  bool esPar() {
    return this % 2 == 0;
  }
}

void main() {
  // Example usage of DiaSemana
  print('Días de la semana:');
  for (var dia in DiaSemana.values) {
    print(dia);
  }

  // Input from the user
  print('Ingrese un número:');
  int? numero = int.tryParse(stdin.readLineSync()!);

  if (numero != null) {
    // Check if the number is even using the extension
    if (numero.esPar()) {
      print('$numero es par.');
    } else {
      print('$numero es impar.');
    }
  } else {
    print('Por favor, ingrese un número válido.');
  }
}

