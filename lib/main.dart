import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:multi_vendor/views/landing_customer_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp().then((value) {
    print('Completed');
  });
  return runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LandingCustomerScreen(),
    )
  );
}