import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
    HomePage()

);

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
              home: Scaffold(
                appBar: AppBar(
                  backgroundColor: Colors.blue.shade800,
                  title: Align(
                    alignment: Alignment.center,
                    child: Text('Your Magic 8 Ball',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                body: SafeArea(
                    child: magicBall()
                ),
              ),
            );
  }
}

class magicBall extends StatefulWidget{
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<magicBall>{

  var answerNumber = 1;
  var random = Random();


  @override
  Widget build(BuildContext context){
    return Container(
        color: Colors.blue,
        child: Center(
          child: Padding(
              padding: EdgeInsets.all(20),
              child: GestureDetector(
                onTap: (){
                  setState(() {
                  answerNumber = random.nextInt(6);
                  if(answerNumber == 0){
                    answerNumber = 1;
                  }
                  print('tapped $answerNumber');
                  });
                },
              child: Image(image: AssetImage('images/ball$answerNumber.png'))
              )
          ),
        )
    );
  }
}