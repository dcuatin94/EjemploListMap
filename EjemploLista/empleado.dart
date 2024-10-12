class Empleado {
  String nombre;
  String cargo;
  double salario;

  Empleado(this.nombre, this.cargo, this.salario);

  @override
  String toString() {
    return 'Empleado: $nombre, Cargo: $cargo, Salario: \$${salario.toStringAsFixed(2)}';
  }
}
