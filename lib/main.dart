import 'package:flutter/material.dart';
import 'package:untitled/Login/Login.dart';

import 'onboard/page/onbording.dart';

void main() {
  runApp( MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.teal,
      ),
      home: const onbording_screen(),
    );
  }
}
