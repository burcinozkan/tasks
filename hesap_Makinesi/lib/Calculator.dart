import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator ({super.key});

  @override
  State<Calculator > createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  Widget calcbutton(String btntxt, Color btncolor, Color txtcolor){
    return Container(
      child: ElevatedButton(
        onPressed: (){

        },
        style: ElevatedButton.styleFrom(
          shape: CircleBorder(),
          primary:btncolor,
          padding: EdgeInsets.all(20),
        ),
        child: Text(btntxt,
          style: TextStyle(
            fontSize: 35,
            color: txtcolor,
          ),
        ),

     ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar (title: Text("Calculator"), backgroundColor: Colors.black,),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(padding: EdgeInsets.all(8.0),
                  child: Text('0',
                    textAlign: TextAlign.left,
                    style: TextStyle(color: Colors.white,
                    fontSize: 100
                    ),
                   ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                calcbutton("AC", Colors.grey,Colors.black),
                calcbutton("+/", Colors.grey,Colors.black),
                calcbutton("%", Colors.grey,Colors.black),
                calcbutton("/", Colors.amber,Colors.white),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                calcbutton("7", Colors.grey[850]!,Colors.black),
                calcbutton("8", Colors.grey[850]!,Colors.black),
                calcbutton("9",Colors.grey[850]!,Colors.black),
                calcbutton("X", Colors.amber[700]!,Colors.white),
              ],
            ),
            SizedBox(height: 10,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                calcbutton("4", Colors.grey[850]!,Colors.black),
                calcbutton("5", Colors.grey[850]!,Colors.black),
                calcbutton("6",Colors.grey[850]!,Colors.black),
                calcbutton("-", Colors.amber[700]!,Colors.white),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                calcbutton("1", Colors.grey[850]!,Colors.black),
                calcbutton("2", Colors.grey[850]!,Colors.black),
                calcbutton("3",Colors.grey[850]!,Colors.black),
                calcbutton("+", Colors.amber[700]!,Colors.white),
              ],
            ),
            SizedBox(height: 10,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        onPressed: (){

                        },
                        style: ElevatedButton.styleFrom(
                          shape: StadiumBorder(),
                          backgroundColor: Colors.grey[850]!,
                          padding: EdgeInsets.symmetric(vertical: 20),
                          minimumSize: Size(double.infinity, 0),
                        ),
                        child: Text("0",
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                        ),),
                      ),
                    ),
                ),
                Expanded(
                    child: Row(

                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: calcbutton(".", Colors.grey[850]!, Colors.white),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: calcbutton("=", Colors.grey[850]!, Colors.white),
                        ),
                      ],
                    )
                ),

              ],
            )
          ],

        ),
      ),
    );

  }
}
