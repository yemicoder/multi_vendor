import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:multi_vendor/views/customer_home_screen.dart';
import 'package:multi_vendor/views/customer_login_screen.dart';
import 'package:multi_vendor/views/landing_customer_screen.dart';

void main() async {

  WidgetsFlutterBinding.ensureInitialized();

  // Makes statusbar transparent
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
        systemNavigationBarContrastEnforced: false,
        statusBarBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.dark,
  ));

  await Firebase.initializeApp().then((value) {
    print('Completed');
  });

  return runApp(
    const MaterialApp(

      debugShowCheckedModeBanner: false,
      home:  CustomerLoginScreen(),
    ),
  );
}