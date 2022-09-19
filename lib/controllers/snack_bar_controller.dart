
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

snackbar(String message, BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message,
    style: TextStyle(
      fontSize: 20
    ) ,)));
}