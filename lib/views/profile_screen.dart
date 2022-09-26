import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.1),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300,
            backgroundColor: Colors.purple,
            automaticallyImplyLeading: false,
            flexibleSpace: LayoutBuilder(builder: (context, constraints) {
              return FlexibleSpaceBar(
                title: AnimatedOpacity(
                  opacity: constraints.biggest.height <= 120 ? 1 : 0,
                  duration: Duration(milliseconds: 300),
                  child: Text('Account'),
                ),
                background: Container(
                  padding: const EdgeInsets.only(left: 40),
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(colors: [
                    Colors.purple,
                    Colors.deepPurpleAccent,
                  ])),
                  child: Row(
                    children: const [
                      CircleAvatar(
                        radius: 80,
                        backgroundImage: AssetImage('assets/images/dummy-profile-pic.png'),
                      ),
                      SizedBox(width: 50,),
                      Text('Guest',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),)
                    ],
                  ),
                ),
              );
            }),
          ),
          SliverToBoxAdapter(
              child: Column(
            children: [
              Container(
                height: 100,
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 70,
                      width: 120,
                      padding: const EdgeInsets.all(10),
                      decoration: const BoxDecoration(
                          color: Colors.blueGrey,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                          topLeft: Radius.circular(30),
                        )
                      ),
                      child: TextButton(onPressed: () {},
                          child: const Text('Cart',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                          ),
                          ),
                      ),
                    ),
                    Container(
                      height: 70,
                      width: 120,
                      padding: const EdgeInsets.all(10),
                      decoration: const BoxDecoration(
                          color: Colors.deepPurpleAccent,
                      ),
                      child: TextButton(onPressed: () {},
                        child: const Text('Order',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 70,
                      width: 120,
                      padding: const EdgeInsets.all(10),
                      decoration: const BoxDecoration(
                          color: Colors.blueGrey,
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(30),
                            topRight: Radius.circular(30),
                          )
                      ),
                      child: TextButton(onPressed: () {},
                        child: const Text('Wishlist',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20,),
              const Text('Account Info',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black38
              ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  padding: const EdgeInsets.all(30),
                  height: 310,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: const [
                          ListTile(
                            title: Text('Email Address'),
                            subtitle: Text("dubiafx@gmail.com"),
                            leading: Icon(Icons.email),
                          ),

                      Divider(
                        color: Colors.black26, thickness: 1,
                      ),

                      ListTile(
                        title: Text('Phone no'),
                        subtitle: Text("+2348136262413"),
                        leading: Icon(Icons.phone),
                      ),

                      Divider(
                        color: Colors.black26, thickness: 1,
                      ),

                      ListTile(
                        title: Text('Location'),
                        subtitle: Text("Plot 924 madiba street"),
                        leading: Icon(Icons.location_on_rounded),
                      ),
                    ],
                  ),
                ),
              ),

              const Text('Account Settings',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black38
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  padding: const EdgeInsets.all(30),
                  height: 260,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),

                  child: Column(
                    children: const [
                      ListTile(
                        title: Text('Edit Profile'),
                        leading: Icon(Icons.edit),
                      ),

                      Divider(
                        color: Colors.black26, thickness: 1,
                      ),

                      ListTile(
                        title: Text('Change Password'),
                        leading: Icon(Icons.phone),
                      ),

                      Divider(
                        color: Colors.black26, thickness: 1,
                      ),

                      ListTile(
                        title: Text('Logout'),
                        leading: Icon(Icons.logout),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          ),
        ],
      ),
    );
  }
}
