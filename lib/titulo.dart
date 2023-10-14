
import 'package:flutter/material.dart';



class PageTitle extends StatelessWidget {
  final String title;

  PageTitle({required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, // Extiende al 100% del ancho de la pantalla.
      margin: EdgeInsets.only(top: 40.0, bottom: 30.0),
      padding: EdgeInsets.all(32.0),
      color: Colors.green, // Fondo verde.
      child: Row(
        children: [
          Text(
            title,
            style: TextStyle(fontFamily: 'Montserrat',fontSize: 20 , fontWeight: FontWeight.bold, color: Colors.white), // Texto en blanco.
          ),
            Spacer(),
          Image.asset(
            'assets/img/imagen.png', // Reemplaza 'tu_imagen.jpg' con la ruta correcta de tu imagen.
            width: 150, // Ancho de la imagen.
          ),
        ],
      ),
    );
  }
}
