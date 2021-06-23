import 'package:flutter/material.dart';
import 'package:to_do_list/components/body.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Body(),
      theme: ThemeData(primarySwatch: Colors.red),
    );
  }
}
