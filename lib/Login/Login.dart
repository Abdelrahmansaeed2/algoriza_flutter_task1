import 'package:flutter/material.dart';
import 'package:untitled/widgets.dart';

class Login extends StatelessWidget {
  Widgets widgets = Widgets();
  @override
  Widget build(BuildContext context) {

    return Container(

      child: Scaffold(
        backgroundColor: Colors.white,

        body: SingleChildScrollView(

          child: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[

                 Center(
                    child: Column(
                      children: <Widget>[
                        Container(
                          height: MediaQuery.of(context).size.height / 3,
                          decoration: BoxDecoration(

                            image: DecorationImage(image: AssetImage("images/atte.png"), fit: BoxFit.fill),
                          ),
                        ),

                        widgets.buildSignin(context)
                      ],
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