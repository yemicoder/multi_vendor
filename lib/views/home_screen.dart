import 'package:flutter/material.dart';

import 'inner_screen/search_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        brightness: Brightness.light,
        elevation: 0,
          automaticallyImplyLeading: false,
          title: Container(
              height: 40,
              child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: TextField(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
                              return SearchScreen();
                            }));
                          },
                          decoration: InputDecoration(
                            prefixIcon: const Icon(Icons.search, color: Colors.purple,),
                            contentPadding: const EdgeInsets.only(left: 20, right: 20),
                            hintText: 'Search products',
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: const BorderSide(
                                  color: Colors.purple, width: 0.5
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: const BorderSide(color: Colors.purple, width: 1)
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 20,),
                      ElevatedButton(onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
                            return SearchScreen();
                          }));
                      },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.purple,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)
                            ),
                            padding: const EdgeInsets.only(left: 20, right: 20)
                        ),
                        child: const Text('Search'),
                      ),
                    ],
            ),
          ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            padding: const EdgeInsets.only(top: 30, right: 20, left: 20),
          child: Column(
            children: [

            ],
          ),
        ),
        ),
      ),
    );
  }
}
