import 'package:flutter/material.dart';

class errorpage extends StatelessWidget {
  const errorpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text('error 404: page not found'),
          )
        ],
      ),
    );
  }
}