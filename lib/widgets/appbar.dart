import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Size get preferredSize =>
      const Size.fromHeight(56.0); // Altura preferida del AppBar

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('Ruta Verde'),
      leading: IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: () {
          // Lógica para ir atrás
          Navigator.of(context).pop();
        },
      ),
      actions: <Widget>[
        const Text(''),
        IconButton(
          icon: const Icon(Icons.close),
          onPressed: () {
            // Lógica para mostrar notificaciones
          },
        ),
      ],
    );
  }
}
