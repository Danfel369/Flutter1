import 'package:flutter/material.dart';
import 'package:pimerproyectico/formulario.dart';

class Rutaspro extends StatelessWidget {
  const Rutaspro({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurpleAccent,
          title: const Text('Pagina de rutas'),
        ),

        body: ElevatedButton(
          child: Text('sobre las rutas'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => Formulario()
              ),
            );
          },
          ),
      ),
    );
  }
}