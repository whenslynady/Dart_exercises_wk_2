import 'dart:io'; // Import the library for user input

// Abstract class Animal
abstract class Animal {
  // Abstract method
  void hacerSonido();
}

// Mixin Nadador
mixin Nadador {
  void nadar() {
    print('Estoy nadando.');
  }
}

// Class Delfin that extends Animal and uses the Nadador mixin
class Delfin extends Animal with Nadador {
  @override
  void hacerSonido() {
    print('El delfin hace un sonido.');
  }
}

// Class Vehiculo with a factory constructor
class Vehiculo {
  String tipo;

  // Private constructor
  Vehiculo._(this.tipo);

  // Factory constructor
  factory Vehiculo.crear(String tipo) {
    if (tipo.toLowerCase() == 'auto') {
      return Vehiculo._('Auto');
    } else if (tipo.toLowerCase() == 'moto') {
      return Vehiculo._('Moto');
    } else {
      throw Exception('Tipo de vehiculo no valido');
    }
  }
}

void main() {
  // Creating an instance of Delfin
  Delfin delfin = Delfin();
  delfin.hacerSonido();
  delfin.nadar();

  // Creating vehicles using the factory constructor
  try {
    print('Ingrese el tipo de vehículo (auto/moto):');
    String tipoInput = stdin.readLineSync()!;
    Vehiculo vehiculo = Vehiculo.crear(tipoInput);
    print('Se ha creado un vehiculo tipo: ${vehiculo.tipo}');
  } catch (e) {
    print('Error: $e');
  }
}
