import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:menu_lateral/controlador/operaciones_controlador.dart';
import 'package:menu_lateral/modelo/operaciones_modelo.dart';

class OperacionesVista extends StatefulWidget {
  final String titulo;
  final String tipoOperacion;

  OperacionesVista({required this.titulo, required this.tipoOperacion});

  @override
  OperacionesVistaState createState() => OperacionesVistaState();

}

class OperacionesVistaState extends State<OperacionesVista> {
  // Controladores de texto
  final TextEditingController _numero1 = TextEditingController();
  final TextEditingController _numero2 = TextEditingController();

  // Controlador para las operacioens
  final OperacionesControlador _operacion = OperacionesControlador();

  // resultado
  String resultado = '';

  void calcular() {
    final double numero1 = double.tryParse(_numero1.text) ?? 0;
    final double numero2 = double.tryParse(_numero2.text) ?? 0;

    // Verificar que los campos no esten vacios
    if(_numero1.text.isEmpty || _numero2.text.isEmpty) {
      setState(() {
        resultado = 'Por favor, ingrese los números';
      });
      return;
    }

    OperacionesModelo operacionesModelo = OperacionesModelo(numero1: numero1, numero2: numero2);

    final resul = _operacion.realizarOperaciones(operacionesModelo, widget.tipoOperacion);
    setState(() {
      resultado = resul;
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.titulo),
        backgroundColor: Colors.yellowAccent,
      ),
      body: Padding(
          padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: _numero1,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(labelText: 'Ingrese numero 1'),
          ),
          SizedBox(height: 16,),
          TextField(
            controller: _numero2,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(labelText: 'Ingrese numero 2'),
          ),
          SizedBox(height: 16,),
            ElevatedButton(onPressed: calcular, child: Text('Calcular')),
          SizedBox(height: 16,),
          Text(resultado,
            style: TextStyle(fontSize: 18, color: Colors.yellowAccent),
          )
        ],
      ),
      ),
    );
  }

}