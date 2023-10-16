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
    {'name': 'Metal', 'icon': Icons.track_changes},
    {'name': 'Orgánico', 'icon': Icons.eco},
    // Agrega más tipos de basura según tus necesidades
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                const Text(
                  'Instrucciones:',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Image.asset(
                    'lib/assets/images/instrucciones.png'), // Reemplaza con la ruta de tu imagen
              ],
            ),
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              children: basuraTypes.map((type) {
                bool isSelected = selectedTypes.contains(type['name']);
                return Card(
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
                          isSelected ? 'Seleccionado' : 'No seleccionado',
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
                            Icon(type['icon']), // Icono
                            Text(type['name']), // Texto
                          ],
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
