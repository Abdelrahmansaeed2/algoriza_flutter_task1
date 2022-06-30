import 'package:flutter/material.dart';
import 'package:untitled/widgets.dart';

class Register extends StatelessWidget {
  Widgets widgets = Widgets();
  @override
  Widget build(BuildContext context) {
    return Scaffold(


      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[



                Center(
                  child: Column(
                    children: <Widget>[
                      Stack(
                        alignment: Alignment.topLeft,
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height / 6,
                            decoration: BoxDecoration(

                              image: DecorationImage(image: AssetImage("images/atte.png"), fit: BoxFit.fill),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    shape: const CircleBorder(),
                                    primary: Colors.black
                                ),
                                onPressed: (){
                                  Navigator.of(context).pop();
                                },
                                child: const Icon(Icons.arrow_back_ios_new_sharp, color: Colors.white,)
                            ),
                          ),
                        ],
                      ),


                      widgets.buildSignup(context)
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}