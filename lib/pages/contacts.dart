import 'package:flutter/material.dart';

class contacts extends StatelessWidget {
  final String mobile_no;
  final String pincode;
  const contacts({super.key, required this.mobile_no, required this.pincode});

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
            Text('contacts'),
            const SizedBox(height: 10),

            Text('Mobile No: $mobile_no \n Pincode: $pincode')
          ],
        ),
      ),
    );
  }
}