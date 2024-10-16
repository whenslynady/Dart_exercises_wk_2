// Import the library for using stdin (not needed in this version)
import 'dart:io'; // This line can be commented out if not using stdin

// Enumeration for the days of the week
enum DiaSemana {
  Lunes,
  Martes,
  Miercoles, // Without accent
  Jueves,
  Viernes,
  Sabado, // Without accent
  Domingo,
}

// Extension on int to check if the number is even
extension ParExtension on int {
  bool esPar() {
    return this % 2 == 0; // Return true if the number is even
  }
}

void main() {
  // Example usage of DiaSemana
  print('Days of the week:');
  for (var dia in DiaSemana.values) {
    print(dia); // Print each day of the week
  }

  // Hardcoded user input instead of stdin
  int numero = 4; // Change this number for testing
  print('Entered number: $numero');

  // Check if the number is even using the extension
  if (numero.esPar()) {
    print('$numero is even.'); // Print if the number is even
  } else {
    print('$numero is odd.'); // Print if the number is odd
  }
}
