import 'package:flutter/material.dart';
import 'package:flutter_facebook_clone/screens/screens.dart';

class BuildApp extends StatelessWidget {
  const BuildApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FrontScreen(),
    );
  }
}
