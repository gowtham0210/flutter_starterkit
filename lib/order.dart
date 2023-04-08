import 'package:flutter/material.dart';

class Order extends StatelessWidget {
  const Order({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      // backgroundColor: Colors.transparent,
      appBar: AppBar(
        title: const Text('Second Route'),
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        constraints:const BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image:DecorationImage(
              image: NetworkImage("https://images.unsplash.com/photo-1551610290-e153ec567dd8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=3063&q=80",)
              ,fit:BoxFit.cover
          ),
        ),
        //Image.asset('assets/image/coffee-3.png'),
        child:
        )
      );
  }
}
