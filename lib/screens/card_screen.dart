import 'package:flutter/material.dart';

import 'package:conponentes_app/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title:  const Text('card Screen'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric( horizontal: 20, vertical: 10),
        children: const   [
            CustonCardType1(),
            SizedBox( height: 10,), 
            CustomCardType2(imageUrl: 'https://www.rdstation.com/blog/wp-content/uploads/sites/2/2017/09/thestocks.jpg', ),
            SizedBox( height: 10,), 
            CustomCardType2(imageUrl: 'https://soyhorizonte.com/wp-content/uploads/2020/10/Javascript-by-SoyHorizonte.jpg', ),
            SizedBox( height: 10,), 
            CustomCardType2(imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/9/91/JavaScript_screenshot.png', ),
        ],
      )
    );
  }
}

