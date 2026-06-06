

import 'package:flutter/material.dart';

class Calculadora extends StatefulWidget {
  const Calculadora ({super.key});
  
  @override
  State<Calculadora> createState() => _CalculadoraState();
}

class _CalculadoraState extends State<Calculadora>{
  String operacion = "";
  String resultado = "";
  String actualNum = "";  
  List<String> elements = [];
  List<String> calculation = [];


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
      switch (value) {
      case 'CA': 
        operacion = "";
        resultado = "0";
        actualNum = "";
        elements.clear();
        return;
      case 'CE':
        operacion = "";
        return;
      case '<-':
        if (operacion.isNotEmpty){
          operacion = operacion.substring(0, operacion.length - 1);
        }
        return;
        
        case "+":
        case "-":
        case "*":
        case "/":
          if (actualNum.isNotEmpty){
            elements.add(actualNum);
            elements.add(value);
            actualNum = "";
            operacion += value;
          }
          print(elements);

          break;

          case"=":
          if(actualNum.isNotEmpty){
            elements.add(actualNum);
          }

          calculation = List.from(elements);
          bool areOperators = true;

          while (areOperators) {
            areOperators = true;

            for (int i = 0; i < calculation.length; i++) {
              if (calculation[i] == "*" || calculation[i] == "/"){
                double a = double.parse(calculation[i - 1]);
                double b = double.parse(calculation[i + 2]);

                double r = 0;

                if (calculation[i] == "*") {
                  r = a * b;
                } else {
                  r = a / b;
                }

                calculation.replaceRange(i - 1, i + 2, [r.toString()]);

                areOperators = true;

                break;
              }
            }
          }

      break;

      default:  
      operacion += value;
      actualNum += value;
    }
    });
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
