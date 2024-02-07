import 'package:flutter/material.dart';
import 'package:hmw2/Y.dart';
import 'package:flutter/material.dart';

class X extends StatefulWidget {
  const X({super.key});

  @override
  State<X> createState() => _XState();
}

class _XState extends State<X> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("X Screen"),),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(onPressed: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const Y()));
            }, child: const Text("To Y Screen"))
          ],
        ),
      )
    );
  }
}
