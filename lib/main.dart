
import 'package:desion_project/widget/splashScreen.dart';
import 'package:flutter/material.dart';
 // تأكد من أن لديك صفحة HomePage

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // لإخفاء شريط التصحيح
      home: SplashScreen(),
    );
  }
}
