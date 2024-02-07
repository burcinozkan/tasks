import 'package:flutter/material.dart';
import 'package:hmw2/Y.dart';

class B extends StatefulWidget{
  const B({super.key});

  @override
  State<B> createState() => _BState();
}

class _BState extends State<B> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Screen B"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(onPressed: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const Y()));
           }, child: const Text("To Screen Y")),
          ],
        ),
      ),
    );
  }
}
