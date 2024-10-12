void main() {
  // Crear un Map de medicinas donde la clave es el nombre de la medicina
  // y el valor es una lista [cantidad en stock, precio por unidad]
  Map<String, List<dynamic>> inventarioMedicinas = {
    'Paracetamol': [100, 0.50], // 100 unidades, $0.50 cada una
    'Ibuprofeno': [200, 0.75], // 200 unidades, $0.75 cada una
    'Amoxicilina': [50, 1.25], // 50 unidades, $1.25 cada una
  };

  // Mostrar el inventario inicial
  print('Inventario inicial de medicinas:');
  inventarioMedicinas.forEach((medicina, datos) {
    print('$medicina: ${datos[0]} unidades, \$${datos[1]} por unidad');
  });

  // Añadir una nueva medicina al inventario
  inventarioMedicinas['Aspirina'] = [150, 0.60];
  print('\nDespués de añadir Aspirina:');
  inventarioMedicinas.forEach((medicina, datos) {
    print('$medicina: ${datos[0]} unidades, \$${datos[1]} por unidad');
  });

  // Actualizar el precio de la Amoxicilina
  // Utilizamos el método update() para actualizar el valor
  inventarioMedicinas.update('Amoxicilina', (datos) {
    datos[1] = 1.50; // Nuevo precio
    return datos;
  });
  print('\nDespués de actualizar el precio de Amoxicilina:');
  inventarioMedicinas.forEach((medicina, datos) {
    print('$medicina: ${datos[0]} unidades, \$${datos[1]} por unidad');
  });

  // Vender 20 unidades de Paracetamol
  if (inventarioMedicinas.containsKey('Paracetamol')) {
    inventarioMedicinas.update('Paracetamol', (datos) {
      if (datos[0] >= 20) {
        datos[0] -= 20; // Reducir 20 unidades
      } else {
        print('No hay suficientes unidades de Paracetamol para la venta.');
      }
      return datos;
    });
  }
  print('\nDespués de vender 20 unidades de Paracetamol:');
  inventarioMedicinas.forEach((medicina, datos) {
    print('$medicina: ${datos[0]} unidades, \$${datos[1]} por unidad');
  });

  // Eliminar una medicina (Ibuprofeno) del inventario
  // Utilizamos el método remove() para eliminar un elemento
  inventarioMedicinas.remove('Ibuprofeno');
  print('\nDespués de eliminar Ibuprofeno:');
  inventarioMedicinas.forEach((medicina, datos) {
    print('$medicina: ${datos[0]} unidades, \$${datos[1]} por unidad');
  });

  // Mostrar todas las medicinas disponibles
  print('\nMedicinas disponibles: ${inventarioMedicinas.keys}');

  // Mostrar los precios de todas las medicinas
  print('\nPrecios de las medicinas:');
  inventarioMedicinas.forEach((medicina, datos) {
    print('$medicina: \$${datos[1]} por unidad');
  });
}
