import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 200),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Text('Cart',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                  Icon(Icons.delete_forever, size: 40,),
                ],
              ),
            ),
            const SizedBox(height: 400,),
            const Text('Your Cart is Empty',
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Colors.blueGrey,
            ),
            ),
            const SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 120, right: 120),
              child: ElevatedButton(onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple,
                    minimumSize: const Size.fromHeight(60),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: const Text(
                    'Continue Shopping',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
              ),
            ),
            const SizedBox(height: 300,),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text("Total: \$",
                  style: TextStyle(
                    fontSize: 25,
                  ),
                  ),
                  const Text("00.00",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.red,
                  ),
                  ),
                  const SizedBox(width: 30,),
                  Expanded(
                    child: ElevatedButton(onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.purple,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)
                          )
                        ),
                        child: const Text(
                          'Checkout',
                        )),
                  ),
                ],
              ),
            )
          ],
        )
      ),
    );
  }
}
