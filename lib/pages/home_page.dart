import 'package:flutter/material.dart';
import 'package:party_app_ui/animation/FadeAnimation.dart';

class HomePage extends StatefulWidget {
  static final String id = "home_page";

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isLogin = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/im_party.jpeg"),
            fit: BoxFit.cover
          )
        ),
        child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              colors: [
                Colors.black.withOpacity(.6),
                Colors.black.withOpacity(.5),
                Colors.black.withOpacity(.4),
                Colors.black.withOpacity(.1),
              ]
            )
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(height: 100,),
              FadeAnimation(1, Text("Find the best parties near you", style: TextStyle(color: Colors.yellow, fontSize: 40, fontWeight: FontWeight.bold),)),
              SizedBox(height: 30,),
              FadeAnimation(1.2, Text("Let us find you a party for your insterst", style: TextStyle(color: Colors.greenAccent, fontSize: 25, fontWeight: FontWeight.w100),)),

              Expanded(child: Container()),

              //#start #login islogin
              _isLogin?
              FadeAnimation(1.4,
                  Container(
                    height: 55,
                    decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.yellow.shade900
                    ),
                    child: Center(
                      child: Text("Start", style: TextStyle(color: Colors.white, fontSize: 18),),
                    ),
                  )
              )
                  :
              FadeAnimation(1.4,
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: 55,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.red.shade900
                              ),
                              child: Center(
                                child: Text("Google+", style: TextStyle(color: Colors.white, fontSize: 18),),
                              ),
                            ),
                          ),
                         SizedBox(width: 10,),
                         Expanded(
                           child:  Container(
                             height: 55,
                             decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(50),
                                 color: Colors.blue.shade900
                             ),
                             child: Center(
                               child: Text("Facebook", style: TextStyle(color: Colors.white, fontSize: 18),)
                               ,
                             ),
                           ),
                         )
                        ],
                      )
                  )
            ],
          ),
        ),
      ),
    );
  }
}
