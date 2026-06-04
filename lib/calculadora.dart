import 'package:flutter/material.dart';

class Calculadora extends StatelessWidget {
  const Calculadora({super.key});

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
                  children: const [
                    Text(
                      '8 + 15',
                      style: TextStyle(color: Colors.white, fontSize: 35),
                    ),
                    SizedBox(height: 10),
                    Text(
                      '23',
                      style: TextStyle(color: Colors.white, fontSize: 50),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              children: [boton('7'), boton('8'), boton('9'), boton('/') ],
            ),
            Row(
              children: [boton('4'), boton('5'), boton('6'), boton('*') ],
            ),
            Row(
              children: [boton('1'), boton('2'), boton('3'), boton('+') ],
            ),
            Row(
              children: [boton('0'), boton('=') ],
            ),
          ],
        ),
      ),
    );
  }

  Widget boton(String texto) {
    return Expanded(
      child: ElevatedButton(onPressed: () {}, child: Text(texto)),
      );
  }
}
