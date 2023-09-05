import 'package:flutter/material.dart';


class SecondScreen extends StatefulWidget {
  final Map args;
  const SecondScreen({super.key, required this.args});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {

  String name = "";
  String routeName ="";

  @override
  void initState() {

    if(widget.args.containsKey('name')){
      name = widget.args['name'].toString();
    }
    if(widget.args.containsKey('routeName')){
      routeName = widget.args['routeName'].toString();
    }

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        leading:const BackButton(color: Colors.white,),
        title: Text(widget.args['titleName'].toString(), style: const TextStyle(color: Colors.white),),
      ),

      body: Center(
        child: Text(name, textScaleFactor: 3,),
      ),
    );
  }
}
