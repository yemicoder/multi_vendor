import 'package:flutter/material.dart';
import 'package:multi_vendor/controllers/auth_controller.dart';



class LandingCustomerScreen extends StatefulWidget {
  const LandingCustomerScreen({Key? key}) : super(key: key);

  @override
  State<LandingCustomerScreen> createState() => _LandingCustomerScreenState();
}

class _LandingCustomerScreenState extends State<LandingCustomerScreen> {
  final AuthController _authController =  AuthController();
  bool passwordVisible = true;
  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text(
          'MULTI VENDOR',
          style: TextStyle(
            fontSize: 30
        ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            padding: const EdgeInsets.only(top: 60, right: 20, left: 20),
            color: Colors.white,
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
                      const CircleAvatar(
                        radius: 80,
                        backgroundColor: Colors.grey,
                      ),
                      const SizedBox(width: 40,),
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
                            icon: const Icon(Icons.camera_alt, size: 30,),
                            ),
                          ),
                          const SizedBox(height: 20,),
                          Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(30)
                            ),
                            child: IconButton(onPressed: () {},
                              color: Colors.white,
                              icon: const Icon(Icons.image, size: 30,),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 30,),
                  TextField(
                    controller: _fullNameController,
                    decoration: InputDecoration(
                      labelText: 'Full Name',
                      contentPadding:  const EdgeInsets.only
                        (left: 20, top: 30, bottom: 30),
                      hintText: 'Full Name',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: const BorderSide(
                          color: Colors.purple,
                          width: 1.5,
                        ),
                      )
                    ),
                  ),
                  const SizedBox(height: 20,),
                  TextField(
                    controller: _emailController,
                    decoration: InputDecoration(
                        contentPadding: const EdgeInsets.only
                          (left: 20, top: 30, bottom: 30),
                        labelText: 'Email',
                        hintText: 'Enter your email address',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide: const BorderSide(
                              color: Colors.pink
                          ),
                        )
                    ),
                  ),
                  const SizedBox(height: 20,),
                  TextField(
                    controller: _passwordController,
                    obscureText: passwordVisible,
                    decoration: InputDecoration(
                        contentPadding: const EdgeInsets.only
                          (left: 20, top: 30, bottom: 30),
                        labelText: 'Password',
                        hintText: 'Enter your password',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide: const BorderSide(
                              color: Colors.pink
                          ),
                        ),
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            passwordVisible = !passwordVisible;
                          });
                        },
                        icon: passwordVisible ? const Icon(Icons.visibility)
                            : Icon(Icons.visibility_off),

                      ),
                    ),
                  ),
                  const SizedBox(height: 40,),
                  TextButton(
                    onPressed: () {
                      _authController.signUpUsers(_fullNameController.text,
                          _emailController.text, _passwordController.text);
                    },
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.only(top: 20, bottom: 20),
                          primary: Colors.purple,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40),
                          ),
                          minimumSize:const  Size.fromHeight(50),
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
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Already have an account?",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                      ),
                      ),
                      const SizedBox(width: 20,),
                      TextButton(
                        onPressed: () {},
                        child: const Text("Login",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.blue
                        ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20,),
                  const Text("Or",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Create a seller's Account",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      const SizedBox(width: 20,),
                      TextButton(
                        onPressed: () {},
                        child: const Text("Sign up",
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.blue
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
      ),
    );
  }
}
