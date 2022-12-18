import 'package:conponentes_app/router/app_router.dart';
import 'package:conponentes_app/themes/app_theme.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
     appBar: AppBar(
      title: const Text('My primer App'),
     ), 
     body: ListView.separated(
       itemCount: AppRoutes.menuOption.length,

       separatorBuilder: ( _, __) => const Divider(),

       itemBuilder: (context, index)   =>  ListTile(
        leading: Icon(AppRoutes.menuOption[index].icon, color: AppTheme.primary,),
        title:   Text(AppRoutes.menuOption[index].name ),
        onTap: () {

        //final route = MaterialPageRoute(builder: (context) => const ListView2Screen());
        
        //Navigator.push(context, route);

        Navigator.pushNamed(context, AppRoutes.menuOption[index].route );

        }
        )  
     )
      
    );
  }
}