abstract class Animal {
  // Abstract method
  void comer();
}

class Perro extends Animal {
  // Attributes
  String nombre;
  int edad;

  // Constructor with assertion
  Perro(this.nombre, int edad) : this.edad = edad {
    assert(edad > 0, 'La edad del perro debe ser mayor que 0');
  }

  // Implementing the comer method
  @override
  void comer() {
    print('$nombre está comiendo.');
  }
}

void main() {
  // Creating an instance of Perro
  try {
    Perro perro1 = Perro('Rex', 3);
    perro1.comer();

    // This will throw an assertion error
    Perro perro2 = Perro('Buddy', -1);
    perro2.comer();
  } catch (e) {
    print('Error: $e');
  }
}
