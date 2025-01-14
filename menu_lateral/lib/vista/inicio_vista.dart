import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:menu_lateral/vista/operaciones_vista.dart';

class InicioVista extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menú'),
        backgroundColor: Colors.yellowAccent,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
                accountName: Text('Usuario'),
                accountEmail: Text('user@example.com'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.yellowAccent,
                child: Icon(Icons.person_2_rounded, size: 50, color: Colors.white70,),
              ),
            ),
            ListTile(
              leading: Icon(Icons.add),
              title: Text('Suma'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => OperacionesVista(titulo: 'Suma', tipoOperacion: 'suma',))
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.abc),
              title: Text('Resta'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => OperacionesVista(titulo: 'Suma', tipoOperacion: 'suma',))
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.north_east),
              title: Text('Multiplicacion'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => OperacionesVista(titulo: 'Suma', tipoOperacion: 'suma',))
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.safety_divider),
              title: Text('Division'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => OperacionesVista(titulo: 'Suma', tipoOperacion: 'suma',))
                );
              },
            ),
          ],
        ),
      ),
      body: Padding(padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Text('Seleccione una opcion', style: TextStyle(fontSize: 55),)
          ],
      ),
      ),
    );
  }

}