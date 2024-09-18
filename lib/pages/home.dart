import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: email,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  hintText: 'Enter email'),
            ),
            TextField(
              controller: password,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  hintText: 'Enter password'),
            ),
            
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Center(child: Text('HomePage')),
                const SizedBox(height: 10),
                ElevatedButton(
                    onPressed: () {
                      context.go(
                        '/about',
                        extra: {'email': email.text, 'password': password.text},
                      );
                    },
                    child: const Text('pass data to about page'))
              ],
            )
          ],
        ),
      ),
    );
  }
}



