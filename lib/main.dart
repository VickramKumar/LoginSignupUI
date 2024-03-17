import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_sign_up/screens/login_screen.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, device) {
        return const GetMaterialApp(
          debugShowCheckedModeBanner: false,
          home: LoginScreen(),
        );
      },
    );
  }
}
