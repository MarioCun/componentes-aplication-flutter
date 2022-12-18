import '../themes/app_theme.dart';
import 'package:flutter/material.dart';



class CustonCardType1 extends StatelessWidget {
  const CustonCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
         children:   [
             const ListTile(
            leading: Icon(Icons.photo_album_outlined, color: Color.fromARGB(255, 0, 0, 0) ),
            title: Text('Soy un titulo'),
            subtitle: Text('Elit occaecat do velit consequat officia irure proident ullamco. Tempor voluptate ad consequat exercitation aliquip laborum non tempor incididunt laboris velit. Ipsum reprehenderit nulla ullamco veniam.'),
          ),
          
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Row(
         mainAxisAlignment: MainAxisAlignment.end,
              children: [
                
                TextButton(
                onPressed: () {},
                child: const Text('Cancel'),
                ),
                TextButton(
                onPressed: () {},
                child: const Text('OK'))
              ],
              
            ),
          )
        ],
      ),
    );
  }
}