import 'package:flutter/material.dart';




class AvatarScreen extends StatelessWidget {
  const AvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Avatar'),
        actions: [
          Container(
            margin: const  EdgeInsets.all(5),
            child: const  CircleAvatar(
              backgroundColor:  Colors.grey,
              child: Text('SL', style: TextStyle(color: Colors.black),),
            ),
          ),
        ],
      ),
      body: const Center(
        child: CircleAvatar(
          radius: 100,
          backgroundImage: NetworkImage('https://i.blogs.es/85aa44/stan-lee/1366_2000.jpg'),
        )
      ),
    );
  }
}
