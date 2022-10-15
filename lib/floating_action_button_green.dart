import 'package:flutter/material.dart';

class FloatingActionButtonGreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _FloatingActionButtonGreen();
  }
}

class _FloatingActionButtonGreen extends State<FloatingActionButtonGreen> {
  bool _pressed = false; //En un inicio va a estar desactivado
  void onPressedFav() {
    //Declaracion del metodo de OnPressed para la accion.
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
          backgroundColor: Colors.purple,
          content: this._pressed
              ? Text("Quitaste de tus favoritos")
              : Text("Agregaste a favoritos")),
    );
    setState(() {
      _pressed = !this._pressed;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return FloatingActionButton(
      backgroundColor: Color(0xff11da53),
      mini: true, //boton pequeño
      tooltip: "Fav", //si alguien lo preciona
      onPressed:
          onPressedFav, //se debe agregar siempre, se le esta enviando el metodo que se desea
      child: Icon(this._pressed ? Icons.favorite : Icons.favorite_border),
    );
  }
}
