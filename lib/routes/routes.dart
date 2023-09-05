import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:name_routes/routes/routes_name.dart';

import '../screens/first_screen.dart';
import '../screens/second_screen.dart';

class Routes{

  static Route<dynamic> generateRoute(RouteSettings settings){

    switch(settings.name){


      case RouteName.firstScreen:
        return MaterialPageRoute(builder: (context)=> const FirstScreen());

      case RouteName.secondScreen:
        final args = settings.arguments as Map;
        return MaterialPageRoute(builder: (context)=> SecondScreen(args: args,));


      default:
        return MaterialPageRoute(builder: (context){
          return const Scaffold(
            body: Center(child: Text("Something went wrong."),),
          );
        });
    }
  }
}