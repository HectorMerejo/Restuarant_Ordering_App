import 'package:flutter/material.dart';
class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Restaurants Homepage'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Center(child: Text('Welcome to Restaurants \n Home Page', style: TextStyle(fontSize: 25),)),
      ),
    );

  }
}
