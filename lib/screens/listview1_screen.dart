import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
  final opciones = const [
    'Megaman',
    'Metal Gear',
    'Super Smash',
    'Final Fantasy'
  ];

  const ListView1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Listview'),
        ),
        body: ListView(
          children: [
          ...opciones.map(
          (e) => ListTile(
            title: Text(e),
            trailing: const Icon(Icons.arrow_forward_ios),
            
            ),
          ).toList()],
          
        ));
  }
}
