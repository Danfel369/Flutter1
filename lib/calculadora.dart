import 'dart:nativewrappers/_internal/vm/lib/ffi_patch.dart';

import 'package:flutter/material.dart';

class Calculadora extends StatefulWidget {
  const Calculadora ({super.key});
  
  @override
  State<Calculadora> createState() => _CalculadoraState();
}

class _CalculadoraState extends State<Calculadora>{
  String operacion = "";
  String resultado = "14";  
  Array elements = [ ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                color: const Color.fromARGB(255, 224, 140, 140),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      operacion,
                      style: TextStyle(color: Colors.white, fontSize: 35),
                    ),
                    SizedBox(height: 10),
                    Text(
                      resultado,
                      style: TextStyle(color: Colors.white, fontSize: 50),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              children: [boton('CA'), boton('CE'), boton('%'), boton('<-') ],
            ),
            Row(
              children: [boton('7'), boton('8'), boton('9'), boton('/') ],
            ),
            Row(
              children: [boton('4'), boton('5'), boton('6'), boton('*') ],
            ),
            Row(
              children: [boton('1'), boton('2'), boton('3'), boton('-') ],
            ),
            Row(
              children: [boton(','), boton('0'), boton('='), boton('+') ],
            ),
          ],
        ),
      ),
    );
  } //build

  void actionBoton(String value) {
    //print(valor);
    setState(() {
      operacion += value;
    });
    switch (value) {
      case 'CA': 
        operacion = "";
        resultado = "0";
        return;
      case 'CE':
        operacion = "";
        return;
      case '<-':
        
        return;
        case "+":
        case "-":
        case "*":
        case "/":

      break;

      default:  
      operacion += value;
      actualNum += value;
    }
  }

  Widget boton(String texto) {
    return Expanded(
      child: ElevatedButton(onPressed: () {
        actionBoton(texto);
      }, 
      child: Text(texto)),
    );
  }
}
