import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {
  final opciones = const [
    'Megaman',
    'Metal Gear',
    'Super Smash',
    'Final Fantasy'
  ];

  const ListView2Screen({Key? key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Listview2'),
        ),
        body: ListView.separated(
          itemBuilder: (context, index) => ListTile( 
            title: Text( opciones[index]),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              final game = opciones[index];
              print(game);
            },
          ) , 
          separatorBuilder: ( _, __) => const Divider(), 
          itemCount: opciones.length)
        );
  }
}
