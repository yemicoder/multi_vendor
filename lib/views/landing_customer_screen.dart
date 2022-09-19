import 'package:flutter/material.dart';



class LandingCustomerScreen extends StatelessWidget {
  const LandingCustomerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text(
          'MULTI VENDOR',
          style: TextStyle(
            fontSize: 30
        ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(top: 60, right: 20, left: 20),
          color: Colors.white,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text ("Create Customer's Account",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.black
                    ),
                    ),
                    Icon(Icons.person, color: Colors.blue, size: 40,),
                  ],
                ),
                SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 80,
                      backgroundColor: Colors.cyan,
                    ),
                    SizedBox(width: 40,),
                    Column(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                              color: Colors.blue,
                            borderRadius: BorderRadius.circular(30)
                          ),
                          child: IconButton(onPressed: () {},
                            color: Colors.white,
                          icon: Icon(Icons.camera_alt, size: 30,),
                          ),
                        ),
                        SizedBox(height: 20,),
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(30)
                          ),
                          child: IconButton(onPressed: () {},
                            color: Colors.white,
                            icon: Icon(Icons.image, size: 30,),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 30,),
                TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 20, top: 30, bottom: 30),
                    hintText: 'Full Name',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: BorderSide(
                        color: Colors.purple,
                        width: 1.5,
                      ),
                    )
                  ),
                ),
                SizedBox(height: 20,),
                TextField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 20, top: 30, bottom: 30),
                      hintText: 'Email',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide(
                            color: Colors.pink
                        ),
                      )
                  ),
                ),
                SizedBox(height: 20,),
                TextField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 20, top: 30, bottom: 30),
                      hintText: 'Password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide(
                            color: Colors.pink
                        ),
                      )
                  ),
                ),
                const SizedBox(height: 40,),
                ElevatedButton(onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.only(top: 20, bottom: 20),
                      primary: Colors.purple,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                      minimumSize: Size.fromHeight(50),
                    ),
                    child: const Text(
                      'Sign up',
                      style: TextStyle(
                        fontSize: 20
                      ),
                    ),
                ),
                  const SizedBox(height: 20,),
                Row(
                  children: const [
                    Text("Already have an account",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),)
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
