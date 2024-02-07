import 'package:flutter/material.dart';
import 'package:hmw2/A.dart';
import 'package:hmw2/B.dart';
import 'package:hmw2/X.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: const Text("Main Page"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(onPressed: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const A()));
            }, child: const Text( "To Screen A")),
            ElevatedButton(onPressed: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const B()));
            }, child: const Text( "To Screen B")),
            ElevatedButton(onPressed: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const X()));
            }, child: const Text( "To Screen X")),
          ],
        ),
      ),
    );
  }
}
