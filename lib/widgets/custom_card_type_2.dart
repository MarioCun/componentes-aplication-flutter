import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
  final String  imageUrl;
  final String?  texto;
  
  
  const CustomCardType2({super.key, 
  required this.imageUrl,  this.texto});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      elevation: 10,
      shadowColor: const Color.fromARGB(255, 0, 0, 0).withOpacity(0.5),
      child:  Column(
        children:    [

        FadeInImage
        (image:   NetworkImage( imageUrl ), 
        placeholder: const  AssetImage('assets/jar-loading.gif'),
        width: double.infinity,
        height: 230,
        fit: BoxFit.cover,
        fadeInDuration: const Duration(milliseconds: 300),
        ),

        if (texto != null)
        Container (
          alignment: AlignmentDirectional.topEnd ,
          padding: const  EdgeInsets.only(right: 20, top: 10, bottom: 20),
          child: Text( texto! ))
      ]),
    );
  }
}