import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:partfoliya_1/homepage/zakaz.dart';
import 'package:partfoliya_1/korzinka.dart/korzinka.dart';
import 'package:partfoliya_1/korzinka.dart/login.dart';
import 'package:partfoliya_1/personpage.dart/fayllar/filial/filialspage.dart';
import 'package:partfoliya_1/personpage.dart/fayllar/settingpage.dart';
import 'package:partfoliya_1/personpage.dart/person.dart';
import 'package:partfoliya_1/splashscren.dart';

import 'bottomNav.dart';
import 'homepage/homepage.dart';

void main(List<String> args) {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:SplashScreenPage(),
    );
    
  }
}