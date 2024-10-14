import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Myhomepage(),
    );
  }
}
class Myhomepage extends StatefulWidget {
  const Myhomepage({super.key});

  @override
  State<Myhomepage> createState() => _MyhomepageState();
}

class _MyhomepageState extends State<Myhomepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: ElevatedButton(
          onPressed: (){
            showDialog(context: context, builder: (context){
              return Dialog(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20))
                ),
                alignment: Alignment.center,
                child: Stack(
                  alignment: Alignment.topCenter,
                  clipBehavior: Clip.none,
                  children:<Widget> [
                    Container(
                      height: 200,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(padding:EdgeInsetsDirectional.only(top: 20.0)),
                          SizedBox(
                            height: 50,
                          ),
                          Text(
                            "Alert Dialog",
                            style :TextStyle(
                                fontFamily: "Segoe UI",
                                fontWeight: FontWeight.w700,
                                fontSize: 23,
                                color: Color(0xff070707)
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            " this is Alert Dialog.\nThis is bangladesh",
                            style :TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 18,
                                color: Color(0xff070707)
                            ),
                          )
                        ],
                      ),
                    ),
                    Positioned(
                      top: -50,
                        child: CircleAvatar(
                          child: ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(60)),
                            child: Image.asset("images/2.jpg"),
                          ),
                      radius: 40,
                    ))
                  ],
                ),

              );
            });
          },
          child: Text("Click",style: TextStyle(
              color: Colors.orangeAccent,
             // backgroundColor: Colors.tealAccent,
              fontSize: 30.00
          ),),
        ),
        
      ) ,
    );
  }
}

