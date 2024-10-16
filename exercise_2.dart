class Persona {
  // Attributes
  String nombre;
  int edad;

  // Constructor
  Persona(this.nombre, this.edad);

  // Method to show details
  void mostrarDetalles() {
    print('Name: $nombre');
    print('Age: $edad');
  }
}

class Empleado extends Persona {
  // New attribute for Empleado
  String cargo;

  // Named constructor
  Empleado(String nombre, int edad, this.cargo) : super(nombre, edad);

  // Overriding the method to include the job title
  @override
  void mostrarDetalles() {
    super.mostrarDetalles(); // Call the superclass method
    print('Position: $cargo');
  }
}

void main() {
  // Create a list to hold persons and employees
  List<Persona> personas = [];

  // Adding persons
  personas.add(Persona('Lourdena', 30));
  personas.add(Persona('Pedro', 25));

  // Adding employees
  personas.add(Empleado('Jhon', 40, 'Developer'));
  personas.add(Empleado('Andres', 22, 'Designer'));

  // Print the details of each person/employee
  for (var persona in personas) {
    persona.mostrarDetalles();
    print(''); // Print an empty line for better readability
  }
}
