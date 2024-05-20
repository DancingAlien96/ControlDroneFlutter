import 'package:flutter/material.dart';

class InfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Informacion',
          style: TextStyle(
            fontSize: 21,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.grey,
        elevation: 0, // Para eliminar la sombra debajo del AppBar
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/assets/grupo.jpg'), // Aquí se cambió la ruta
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.5),
              BlendMode.darken,
            ),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: 'Integrantes del curso ',
                  style: TextStyle(color: Colors.white, fontSize: 30),
                  children: [
                    TextSpan(
                      text: 'Arquitectura de computadoras 2',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.arrow_right,
                        color: Colors.white,
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: Text(
                          'Cristofer Mauricio Pérez Flores',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.arrow_right,
                        color: Colors.white,
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: Text(
                          'Jorge Mario Chavarría Portillo',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.arrow_right,
                        color: Colors.white,
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: Text(
                          'Jefferson Alexander Arriaza Pérez',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.arrow_right,
                        color: Colors.white,
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: Text(
                          'Nery José Galdámez Aristondo',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  
                  SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.arrow_right,
                        color: Colors.white,
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: Text(
                          'Jesús Fernando Galicia Lima',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.arrow_right,
                        color: Colors.white,
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: Text(
                          'Mynor Bezaleel Ramos González',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
