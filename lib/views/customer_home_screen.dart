import 'package:flutter/material.dart';

class CustomerHomeScreen extends StatefulWidget {
  const CustomerHomeScreen({Key? key}) : super(key: key);

  @override
  State<CustomerHomeScreen> createState() => _CustomerHomeScreenState();
}

class _CustomerHomeScreenState extends State<CustomerHomeScreen> {

  int _selectedItem = 0;
  @override
  Widget build(BuildContext context) {

    List<Widget> _pages = [
      Center(child: Text('Home Screen'),),
      Center(child: Text('Category Screen',),),
      Center(child: Text('Shop Screen'),),
      Center(child: Text('Cart Screen'),),
      Center(child: Text('Profile Screen'),),
    ];
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.purple,
        unselectedItemColor: Colors.black,
        currentIndex: _selectedItem,
        onTap: (index) {
          setState(() {
            _selectedItem = index;
          });
        },
        items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Categories'),
        BottomNavigationBarItem(icon: Icon(Icons.shop), label: 'Shop',),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: 'Cart'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
      ],),
      body: SafeArea(
        child: _pages[_selectedItem],
      ),
    );
  }
}
