import 'empleado.dart';

void main() {
  // Crear una lista de empleados
  List<Empleado> empleados = [
    Empleado('Carlos', 'Desarrollador', 900.00),
    Empleado('Ana', 'Diseñadora', 700.00),
    Empleado('Luis', 'Gerente', 1500.00)
  ];

  // Mostrar la lista inicial de empleados
  print('Lista inicial de empleados:');
  //El método forEach() se ejecuta para cada elemento de la lista
  //y se pasa una función que se ejecuta para cada elemento
  empleados.forEach((empleado) => print(empleado));

  // Añadir un nuevo empleado
  empleados.add(Empleado('María', 'Analista',
      2800.00)); //Utilizamos el metodo add() para agregar un elemento a la lista
  print('\nDespués de añadir a María:');
  empleados.forEach((empleado) => print(empleado));

  // Eliminar un empleado (por nombre)
  empleados.removeWhere((empleado) =>
      empleado.nombre ==
      'Ana'); //Utilizamos el metodo removeWhere() para eliminar un elemento de la lista
  print('\nDespués de eliminar a Ana:');
  empleados.forEach((empleado) => print(empleado));

  // Buscar un empleado por nombre
  var empleadoEncontrado = empleados.firstWhere(
      (empleado) => empleado.nombre == 'Luis',
      orElse: () => Empleado('', '', 0.0));
  print('\nEmpleado encontrado:');
  if (empleadoEncontrado.nombre != '') {
    print(empleadoEncontrado);
  } else {
    print('No se encontró al empleado.');
  }

  // Incrementar el salario de todos los empleados en 100
  //Usamos el método map() para iterar sobre la lista y modificar cada elemento
  empleados = empleados.map((empleado) {
    empleado.salario += 100;
    return empleado;
  }).toList();
  print('\nDespués de aumentar el salario en 100:');
  empleados.forEach((empleado) => print(empleado));

  // Filtrar empleados con salario mayor a 1000
  //Usamos el método where() para filtrar la lista
  List<Empleado> empleadosConAltoSalario =
      empleados.where((empleado) => empleado.salario > 1000).toList();
  print('\nEmpleados con salario mayor a 1000:');
  empleadosConAltoSalario.forEach((empleado) => print(empleado));
}
