import 'package:conponentes_app/models/models.dart';
import 'package:flutter/material.dart';
import 'package:conponentes_app/screens/screens.dart';




class AppRoutes {
  static const initialRoute = 'home';

  static final  menuOption = <MenuOption>[
    // MenuOption(route: 'home',  name: 'home Screen', screen:  const HomeScreen(), icon: Icons.home_work_outlined),
    MenuOption(route: 'listview1',  name: 'list tipo 1', screen:  const ListView1Screen(), icon: Icons.list_alt_outlined),
    MenuOption(route: 'listview2',  name: 'list tipo 2', screen:  const ListView2Screen(), icon: Icons.list_outlined),
    MenuOption(route: 'alert',  name: 'alertas', screen:  const AlertScreen(), icon: Icons.warning),
    MenuOption(route: 'card',  name: 'tipo card ', screen:  const CardScreen(), icon: Icons.car_crash_rounded),
    MenuOption(route: 'Avatar',  name: 'Circle avatar ', screen:  const AvatarScreen(), icon: Icons.supervised_user_circle_outlined),
    MenuOption(route: 'Animated',  name: 'animated screen ', screen:  const AnimatedScreen(), icon: Icons.play_arrow),
    MenuOption(route: 'Inputs',  name: 'inputs screen ', screen:  const InputsScreen(), icon: Icons.input_sharp),
    MenuOption(route: 'Slider',  name: 'Slider && Checks', screen:  const SliderScreen(), icon: Icons.slow_motion_video),
    MenuOption(route: 'List Builder',  name: 'List Builder', screen:  const ListViewBuiderScreen(), icon: Icons.line_style),

  ];

  static  Map<String, Widget Function(BuildContext)> getAppRouter(){

    Map<String, Widget Function(BuildContext)> appRoutes = {};

        appRoutes.addAll({ 'home' : ( BuildContext context) =>  const HomeScreen()});
      
      for (final option in menuOption){
        appRoutes.addAll({ option.route : ( BuildContext context) => option.screen});
      }

  

    return appRoutes;
  }

/*   static Map<String, Widget Function(BuildContext)> routes = {
        'home': ( BuildContext context) => const HomeScreen(),
        'listview1': ( BuildContext context) => const ListView1Screen(),
        'listview2': ( BuildContext context) => const ListView2Screen(),
        'alert': ( BuildContext context) => const AlertScreen(),
        'card': ( BuildContext context) => const CardScreen(),

      }; */

  static Route<dynamic> onGenerateRoute (RouteSettings settings) {
        return MaterialPageRoute(
          builder: (context) => const AlertScreen(),);
      }
}


