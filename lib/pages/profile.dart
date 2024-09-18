import 'dart:math';

import 'package:flutter/material.dart';
import 'package:fluttergorouter/app_route_config.dart';
import 'package:go_router/go_router.dart';

class profile extends StatefulWidget {
  final String id;
  final String name;
  const profile({super.key, required this.id, required this.name});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  TextEditingController mobile_no=TextEditingController();
  TextEditingController pincode=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('profile'),
            SizedBox(height: 10),
            Text('id: ${widget.id} \n name: ${widget.name}'),
            SizedBox(height: 10),

            TextField(
              controller: mobile_no,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  hintText: 'Enter mobile No'),
            ),

            TextField(
              controller: pincode,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  hintText: 'Enter pincode'),
            ),

            const SizedBox(height: 10),

            ElevatedButton(
              onPressed: (){
                context.go('/contacts', extra:{
                  'mobile_no':mobile_no.text,
                  'pincode':pincode.text
                });
              }, 
              child: Text('pass data to contacts page')
              )
        
          ],
        ),
      ),
    );
  }
}