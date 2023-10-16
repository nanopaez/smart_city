import 'package:basureros/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFFa3e635), Color(0xFF65a30d)],
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // Logo
                SizedBox(
                  width: 100,
                  height: 100,

                  // Puedes agregar aquí tu imagen de logo
                  child: SvgPicture.asset(
                    'lib/assets/images/reloj-de-basura.svg',
                    // ignore: deprecated_member_use
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 120),

                // Campo de correo
                TextFormField(
                  decoration: const InputDecoration(
                    labelStyle: TextStyle(color: Colors.white),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.blue), // Color del texto de sugerencia
                    ),
                    labelText: 'Correo Electrónico',
                  ),
                  style: const TextStyle(color: Colors.white), // Color blanco
                ),

                const SizedBox(height: 10),

                // Campo de contraseña
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Contraseña',
                  ),
                  style: const TextStyle(color: Colors.white), // Color blanco

                  obscureText: true, // Para ocultar la contraseña
                ),

                const SizedBox(height: 20),

                // Botón de inicio de sesión
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomeScreen()),
                    );
                    // Agregar la lógica para el inicio de sesión aquí
                  },
                  child: const Text(
                    'Iniciar Sesión',
                    style: TextStyle(
                        color: Color.fromARGB(255, 52, 194, 0)), // Color blanco
                  ),
                ),

                const SizedBox(height: 10),

                // Mensaje para registrarse
                TextButton(
                  onPressed: () {
                    // Agregar la lógica para la navegación a la página de registro
                  },
                  child: const Text(
                    '¿No tienes una cuenta? Regístrate aquí',
                    style: TextStyle(color: Colors.white), // Color blanco
                  ),
                ),

                // Mensaje para recuperar contraseña
                TextButton(
                  onPressed: () {
                    // Agregar la lógica para la recuperación de contraseña
                  },
                  child: const Text(
                    '¿Olvidaste tu contraseña?',
                    style: TextStyle(color: Colors.white), // Color blanco
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
