import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
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
                child: Image(image: AssetImage('images/ball1.png')),
              )
          )
        ),
      ),
    )
);
