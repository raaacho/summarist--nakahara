import 'package:flutter/material.dart';


class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 35),
        Container(
          child: Text(
            'Summarist.',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
          ),
        ), 
        SizedBox(height: 150),
        Container(
          child: Text(
            'Hi there!',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
        ), 
        SizedBox(height: 20),
        Container(
          child: Text(
            "Can't find the books you're lokking for?",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ), 
        SizedBox(height: 30),
        Container(
          padding: EdgeInsets.symmetric(vertical: 18.0, horizontal: 120),
          child: Text(
            'Let us know!',
            style: TextStyle(fontSize: 12, color: Colors.white)
          ),
          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.circular(10)
          ),
        ),
        SizedBox(height: 30),
        Divider(
          indent: 20,
          endIndent: 20,
          color: Colors.grey
        ),
        SizedBox(height: 60),
        Container(
          child: Text(
            "Log out",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: Colors.red),
          ),
        ), 
      ],
    );
  }
}
