import 'package:flutter/material.dart';
import 'package:hmw2/anasayfa.dart';

class Y extends StatefulWidget{
  const Y({super.key});

  @override
  State<Y> createState() => _YState();
}

class _YState extends State<Y> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Screen Y"),
        leading: IconButton(
            onPressed: (){
            print("Appbar geri tuşu seçildi");
            Navigator.of(context).popUntil((route) => route.isFirst);
            }, icon: const Icon(Icons.arrow_back_ios_new)),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(onPressed: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const Anasayfa()));

            }, child: const Text("Anasayfaya geri dön"))
          ],
        ),
      ),
    );
  }
}
