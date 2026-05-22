import 'package:flutter/material.dart';

class MiBombo extends StatelessWidget {
  const MiBombo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple)),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Saluditos Page'),
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 300,

          //espacio del contenedor
          margin: const EdgeInsets.all(20),

          decoration: BoxDecoration(
            color: Colors.deepPurple.shade500,
            borderRadius: BorderRadius.circular(20),
          ),

        child: Row(

          mainAxisAlignment: MainAxisAlignment.spaceAround,

          children: [
            Column(

              mainAxisAlignment: MainAxisAlignment.center,
              //hijos del contenedor 
              children: [
                //hijo 1
                Icon(
                  Icons.person,
                  color: const Color.fromARGB(255, 209, 194, 194),
                  size: 50,
                ),
                //hijo 2 
                Text(
                  'Persona',
                  style: TextStyle(
                    color: const Color.fromARGB(255, 201, 27, 27),
                    fontSize: 20,
                  ),
                )
              ],
            ),
            //hijo 2 de row
            Column(
              //centrar elementos de la columna
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.phone_android,
                  color: Colors.black,
                  size: 50,
                ),
                Text(
                  'Sistema operativo',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                )
              ]
            ),
          ],
        ),
        ),
        ),
      ),
    );
  }
}