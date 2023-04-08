import 'package:flutter/material.dart';
import 'package:flutter_starter_kit/order.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Hello",
      home: homepage(),
    );
  }
}

class homepage extends StatelessWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          constraints:const BoxConstraints.expand(),
          decoration: const BoxDecoration(
            image:DecorationImage(
                image: NetworkImage("https://images.unsplash.com/photo-1610632380989-680fe40816c6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fGNvZmZlZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60",)
                ,fit:BoxFit.cover
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(top: 150),
                child: const Text("PERFECT CUP \n OF COFFEE",
                  style: TextStyle(
                    fontSize: 45,
                    color: Colors.white,
                    fontFamily:"EBGaramond",
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const Spacer(),
              Container(
                  margin: const EdgeInsets.only(bottom: 50),
                  child: Align(
                      alignment: Alignment.bottomCenter,
                      child: TextButton(

                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const Order()),
                          );
                        },
                        style: TextButton.styleFrom(

                            backgroundColor: Colors.white,

                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30)
                            ),
                            padding:const  EdgeInsets.symmetric(horizontal: 20,vertical: 10)

                        ),
                        child:const Row(
                            mainAxisSize: MainAxisSize.min,
                            children:[
                              Text("Get Started",
                                style:TextStyle(
                                    fontSize: 30,
                                    color: Colors.black,
                                    fontFamily: "Poppins"
                                ),
                              ),
                              Icon(Icons.arrow_forward,size: 40,color: Colors.black,)
                            ]
                        ),
                      )
                  )

              )
            ],
          ),
        ),
      ),
    );
  }
}
