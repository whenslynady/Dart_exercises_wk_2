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

void main() {
  // Create a list to hold up to four persons
  List<Persona> personas = [];

  // Adding four persons
  personas.add(Persona('Pedro', 30));
  personas.add(Persona('Jhon', 25));
  personas.add(Persona('Leonel', 40));
  personas.add(Persona('María', 22));

  // Print the details of each person
  for (var persona in personas) {
    persona.mostrarDetalles();
    print(''); // Print an empty line for better readability
  }
}
