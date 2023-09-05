import 'package:flutter/material.dart';
import 'package:name_routes/routes/routes_name.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        automaticallyImplyLeading: false,
        title: const Text("First Screen", style: TextStyle(color: Colors.white),),
      ),



      body: Center(
        child: SizedBox(
          height: 60, width: 200,
          child: ElevatedButton(
              onPressed: (){
               // Navigator.pushNamed(context, RouteName.secondScreen);

                Navigator.pushNamed(context, RouteName.secondScreen,
                arguments: {
                  'name' : 'code craft',
                 'titleName' : 'Second Screen',
                  'routeName' : RouteName.firstScreen.toString()
                }
                );
              },
              child:const  Text("Go to second screen",)),
        ),
      ),
    );
  }
}
