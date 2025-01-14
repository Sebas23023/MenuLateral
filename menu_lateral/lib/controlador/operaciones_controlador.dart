import 'package:menu_lateral/modelo/operaciones_modelo.dart';

class OperacionesControlador {
  String realizarOperaciones(OperacionesModelo operaciones, String tipoOperacion) {
    double resultado;

    switch(tipoOperacion) {
      case 'suma':
        resultado = operaciones.numero1 + operaciones.numero2;
        break;
      case 'resta':
        resultado = operaciones.numero1 - operaciones.numero2;
        break;
      case 'multiplicacion':
        resultado = operaciones.numero1 * operaciones.numero2;
        break;
      case 'division':
        if(operaciones.numero2 == 0) {
          return 'Error: No hay división para cero';
        }
        resultado = operaciones.numero1 / operaciones.numero2;
        break;
      default:
        return 'Operación no valida';
    }

    return 'Resultado: $resultado';
  }
}