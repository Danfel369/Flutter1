import 'package:flutter/material.dart';
import 'package:pimerproyectico/calculadora.dart';
import 'package:pimerproyectico/formulario.dart';
import 'package:pimerproyectico/principal.dart';
import 'package:pimerproyectico/rutas.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Calculadora(),
    )
  );
}
