import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Crud Producto'),
        actions: [
          PopupMenuButton<String>(
            onSelected: (value) {
              if (value == 'Cerrar Sesión') {
                _showLogoutDialog(context);
              } else if (value == 'Home') {
                Navigator.pushNamed(context, '/home');
              }
              // Añadir más opciones según sea necesario
            },
            itemBuilder: (BuildContext context) {
              return {'Home', 'Cerrar Sesión'}.map((String choice) {
                return PopupMenuItem<String>(
                  value: choice,
                  child: Text(choice),
                );
              }).toList();
            },
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bosque2.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: Colors.white70,
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Nombre del Producto',
                        filled: true,
                        fillColor: Colors.white,
                      ),
                    ),
                    SizedBox(height: 10),
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Código',
                        filled: true,
                        fillColor: Colors.white,
                      ),
                    ),
                    SizedBox(height: 10),
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Precio',
                        filled: true,
                        fillColor: Colors.white,
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          child: Text('Insertar'),
                        ),
                        SizedBox(width: 10),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text('Modificar'),
                        ),
                        SizedBox(width: 10),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text('Eliminar'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Expanded(
                child: Container(
                  color: Colors.white,
                  width: double.infinity,  // Ocupa todo el ancho de la ventana
                  child: SingleChildScrollView(
                    child: DataTable(
                      columns: [
                        DataColumn(label: Text('Nombre')),
                        DataColumn(label: Text('Código')),
                        DataColumn(label: Text('Precio')),
                      ],
                      rows: [
                        // Ejemplo de datos estáticos, luego se pueden reemplazar con datos dinámicos
                        DataRow(cells: [
                          DataCell(Text('Producto 1')),
                          DataCell(Text('001')),
                          DataCell(Text('\$10.0')),
                        ]),
                        DataRow(cells: [
                          DataCell(Text('Producto 2')),
                          DataCell(Text('002')),
                          DataCell(Text('\$20.0')),
                        ]),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showLogoutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Confirmación de cierre de sesión'),
          content: Text('¿Estás seguro de que quieres cerrar sesión?'),
          actions: [
            TextButton(
              child: Text('Cancelar'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text('Cerrar sesión'),
              onPressed: () {
                Navigator.of(context).pushReplacementNamed('/');
              },
            ),
          ],
        );
      },
    );
  }
}
