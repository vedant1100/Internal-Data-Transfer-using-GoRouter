import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class About extends StatefulWidget {
  final String? email;
  final String? password;
  const About({super.key, required this.email, required this.password});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  TextEditingController id=TextEditingController();
  TextEditingController name=TextEditingController();
  TextEditingController mobile_no=TextEditingController();

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
            Text('about'),
            SizedBox(height: 10),
            Text('email: ${widget.email} \n password: ${widget.password}'),
            SizedBox(height: 10),

            TextField(
              controller: id,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  hintText: 'Enter id'),
            ),

            TextField(
              controller: name,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  hintText: 'Enter name'),
            ),

            ElevatedButton(
              onPressed: (){
                context.go('/profile', extra: {
                  'id':id.text,
                  'name':name.text,
                });
            },
             child: Text('pass data to profile page'))
          ],
        ),
      ),
    );
  }
}