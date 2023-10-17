import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  final int currentIndex;
  final Function(int) onTap;

  const NavBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  CustomNavBarState createState() => CustomNavBarState();
}

class CustomNavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: const Color(0xFF77cb17), // Color de fondo
      currentIndex: widget.currentIndex,
      onTap: widget.onTap,
      selectedItemColor: Colors.white, // Color de ícono seleccionado
      unselectedItemColor: const Color.fromARGB(
          255, 11, 83, 27), // Color de ícono no seleccionado
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Inicio',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications),
          label: 'Notificaciones',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Perfil',
        ),
      ],
    );
  }
}
