import 'package:flutter/material.dart';
import 'package:basureros/screens/login.dart'; // Asegúrate de importar la pantalla de inicio de sesión

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      home:
          const Login(), // Especifica la vista de inicio de sesión como la pantalla de inicio
      title: 'Tu App',
      // Otras configuraciones de MaterialApp
    );
  }
}
