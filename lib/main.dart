import 'package:flutter/material.dart';
import 'feature/account/presentation/account_page.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        /*
        appBar: AppBar(
          title: Center(
            child: Text('Summarist.')
          ),
          backgroundColor: Colors.white,
        ),*/
        body: Center(
          child: MyWidget(),
        ),
      ),
    ),
  );
}
