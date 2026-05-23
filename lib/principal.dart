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
          title: const Text('Tarjeta de Información'),
      ),
      body: Center(
        child: Container(
          width: 500,
          height: 300,

          //espacio del contenedor
          margin: const EdgeInsets.all(20),

          decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.circular(20),
          ),

        child: Row(

          children: [
            Column(

              mainAxisAlignment: MainAxisAlignment.center,
              //hijos del contenedor 
              children: [
                //hijo 1
                Icon(
                  Icons.person,
                  color: Colors.cyan,
                  size: 100,
                ),
                //hijo 2 
              ],
            ),
            //hijo 2 de row
            Column(
              //centrar elementos de la columna

              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //Fila hija
                Text(
                  'Daniel C',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                  ),
                ),
                Row(
                  //hijos contenedor
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      //hijos de esta columna
                      children: [
                        Row(
                          //hijos de esta fila
                          children: [
                            Icon(
                              Icons.email,
                              color:  Colors.black,
                              size:20,
                            ),
                            Text(
                              'danfelkings@gmail.com',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.phone,
                              color: Colors.black,
                              size: 20,
                            ),
                            Text(
                              '314356825',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              color: Colors.black,
                              size: 20,
                            ),
                            Text(
                              'Bogotá',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                              ),
                            )
                          ],
                        )
                      ]
                    )
                  ],
                ),
                
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