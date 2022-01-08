import 'package:flutter/material.dart';

class HomeCtrler with ChangeNotifier {
  // Variable del tipo int, que puedes usar donde la necesites.
  // siempre y cuando instancies la clase.

  int _contador = 0;
  int get contador => _contador;
  set contador(int value) {
    _contador = value;
    // con esta linea, notificas o refrescas el valor donde quiera que este...
    // obvio debes instanciar la clase para que puedas verla y/o actualizarla..
    notifyListeners();
  }
}
