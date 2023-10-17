import 'package:flutter/material.dart';
import 'package:basureros/widgets/appbar.dart';
import 'package:basureros/widgets/napbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  List<String> selectedTypes = [];

  final List<Map<String, dynamic>> basuraTypes = [
    {'name': 'Papel', 'icon': Icons.description},
    {'name': 'Plástico', 'icon': Icons.local_offer},
    {'name': 'Vidrio', 'icon': Icons.panorama_fish_eye},

    // Agrega más tipos de basura según tus necesidades
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                const SizedBox(height: 2),
                Image.asset(
                    'lib/assets/images/instrucciones.png'), // Reemplaza con la ruta de tu imagen
              ],
            ),
          ),
          const Text(
            'Selecciona el tipo de Basura',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 3,
              childAspectRatio: 0.8,
              children: basuraTypes.map((type) {
                bool isSelected = selectedTypes.contains(type['name']);
                return Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Card(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          if (isSelected) {
                            selectedTypes.remove(type['name']);
                          } else {
                            selectedTypes.add(type['name']);
                          }
                        });
                      },
                      child: GridTile(
                        footer: GridTileBar(
                          backgroundColor: Colors.transparent,
                          title: Text(
                            isSelected ? '' : '',
                            style: TextStyle(
                              color: isSelected ? Colors.green : Colors.grey,
                            ),
                          ),
                          trailing: isSelected
                              ? const Icon(
                                  Icons.check,
                                  color: Colors.green,
                                )
                              : null,
                        ),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(type['icon'], size: 40), // Icono
                              Text(
                                type['name'],
                                style: const TextStyle(fontSize: 16),
                              ), // Texto
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
      bottomNavigationBar: NavBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
