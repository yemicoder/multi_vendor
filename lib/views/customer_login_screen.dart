import 'package:flutter/material.dart';

class CustomerLoginScreen extends StatefulWidget {
  const CustomerLoginScreen({Key? key}) : super(key: key);

  @override
  State<CustomerLoginScreen> createState() => _CustomerLoginScreenState();
}

class _CustomerLoginScreenState extends State<CustomerLoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(left: 20, right: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Text("Login to \nCustomer account",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                  Icon(Icons.person, color: Colors.blue, size: 60,),
                ],
              ),
              SizedBox(height: 100,),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Enter your email',
                  labelText: "Email",
                  contentPadding: EdgeInsets.only(
                    top: 30, right: 30, left: 20, bottom: 20
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  )
                ),
              ),
              const SizedBox(height: 20,),
              TextField(
                decoration: InputDecoration(
                    hintText: 'Enter your password',
                    labelText: "Password",
                    contentPadding: const EdgeInsets.only(
                        top: 30, right: 30, left: 20, bottom: 20
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    )
                ),
              ),
              const SizedBox(height: 40,),
              ElevatedButton(onPressed: () {},
                  style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                    minimumSize: Size.fromHeight(70),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(35)
                    )
              ),
                  child: const Text("Login",
                  style: TextStyle(
                    fontSize: 20,
                  ),),
              ),
              const SizedBox(height: 100,),
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
              const SizedBox(height: 40,),
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
    );
  }
}
