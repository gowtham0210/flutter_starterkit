import 'package:flutter/material.dart';

class Order extends StatelessWidget {
  const Order({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      // backgroundColor: Colors.transparent,
      appBar: AppBar(
        title: const Text('Order'),
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image:DecorationImage(
              image: NetworkImage("https://images.unsplash.com/photo-1551610290-e153ec567dd8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=3063&q=80",)
              ,fit:BoxFit.cover
          ),
        ),
        child:Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                image: BackgroundImage
              ),
            ),
            Image.asset('assets/image/coffee-3.png'),
            const Spacer(),
            Expanded(
            child: Container(
              width: 380,
              height: 500,
              decoration:  BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
              ),
              padding:const  EdgeInsets.all(20),
              margin: const EdgeInsets.only(bottom: 20),

              child:const  Column(



              )

            ),
            )



          ],
        )
        )
      );
  }
}
