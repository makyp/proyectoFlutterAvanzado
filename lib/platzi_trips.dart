import 'package:flutter/material.dart';
import 'home_trips.dart';
import 'search_trips.dart';
import 'profile_trips.dart';

class PlatziTrips extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _PlatziTrips();
  }
}

class _PlatziTrips extends State<PlatziTrips> {
  int indexTap = 0;
  final List<Widget> widgetsChildren = [
    HomeTrips(),
    SearchTrips(),
    ProfileTrips()
  ];

  void onTapTapped(int index) {
    setState(() {
      indexTap = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      body: widgetsChildren[indexTap], //Se colocaran los taps que se desean
      bottomNavigationBar: Theme(
        //Personalizacion
        data: Theme.of(context).copyWith(
            //Para colorear la barra
            canvasColor: Colors.white,
            primaryColor: Colors
                .purple //Este es el color que queremos para los iconos cuando se seleccionen

            ),
        child: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          onTap: onTapTapped, //Que sucede cuando alguien le de tap
          currentIndex:
              indexTap, //Indicar que el indice que se aprege sea el ingresado
          items: [
            //Dentro se colocan los taps que tenga nuestro bottonNavigation
            BottomNavigationBarItem(
              icon: Icon(Icons
                  .home), //Home es un icono por defecto que nos proporcionan
              label: (" "), //Titulo de la seccion, si no tiene en blanco
            ),

            BottomNavigationBarItem(
              icon: Icon(Icons
                  .search), //Home es un icono por defecto que nos proporcionan
              label: (" "), //Titulo de la seccion, si no tiene en blanco
            ),

            BottomNavigationBarItem(
              icon: Icon(Icons
                  .person), //Home es un icono por defecto que nos proporcionan
              label: (" "), //Titulo de la seccion, si no tiene en blanco
            ),
          ],
        ),
      ),
    );
  }
}
