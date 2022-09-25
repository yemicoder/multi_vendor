import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
        iconTheme: const IconThemeData(
          color: Colors.black
        ),
        title: const CupertinoSearchTextField(),
      ),
      body: Center(
        child: Container(
          child: const Text('Search result'),
        ),
      ),
    );
  }
}
