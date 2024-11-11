import 'package:flutter/material.dart';

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
                    child: Container(
                        color: Colors.blue,
                        child: Center(
                          child: Padding(
                            padding: EdgeInsets.all(20),
                            child: Image(image: AssetImage('images/ball1.png'))
                          ),
                        )
                    )
                ),
              ),
            );
  }
}