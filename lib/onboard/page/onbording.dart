import 'dart:math';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:untitled/Login/Login.dart';

import 'package:untitled/onboard/page/content_model.dart';
import 'package:untitled/onboard/page/home.dart';

class onbording_screen extends StatefulWidget {
  const onbording_screen({Key? key}) : super(key: key);

  @override
  _onbording_screenState createState() => _onbording_screenState();
}

class _onbording_screenState extends State<onbording_screen> {
  int currentIndex = 0;
  late PageController controller;

  @override
  void initState() {
    controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }@override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,

      body: Container(




        child: Stack(
          children: <Widget>[
            //lets first make content for small screens that is less than 580
            screenSize.width < 580 ?
            Container(
              //for small screens


              child:Column(
                children: [
                  Expanded(
                    child: PageView.builder(
                      controller: controller,
                      itemCount: contents.length,
                      onPageChanged: (int index) {
                        setState(() {
                          currentIndex = index;
                        });
                      },
                      itemBuilder: (_, i) {
                        return Padding(
                          padding: const EdgeInsets.all(30),

                          child: Container(

                            child: Column(
                              children: [
                                Container(




                                  margin: const EdgeInsets.fromLTRB(260, 20, 0, 20),
                                  width: 140,
                                  child: MaterialButton(
                                    onPressed: () {
                                      if (currentIndex == contents.length - 1) {

                                      }
                                      controller.nextPage(
                                        duration: const Duration(milliseconds: 100),
                                        curve: Curves.bounceIn,
                                      );
                                    },

                                    color: const Color(0xFFFAF2E7),
                                    textColor: Colors.black,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(60),
                                    ),
                                    child: const Text(
                                        "Skip"),
                                  ),
                                ),

                                Container(



                                  child: Image.asset("images/logo.png", fit: BoxFit.fill,),
                                ),
                                Image.asset(
                                  contents[i].image,
                                  height: 200,
                                ),
                                Text(
                                  textAlign: TextAlign.center,

                                  contents[i].title,
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  contents[i].discription,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.grey,
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 32),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: List.generate(
                                      contents.length,
                                          (index) => buildDot(index, context),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 30,
                                  width: double.infinity,
                                  margin: EdgeInsets.only(top: 32),
                                  child: FlatButton(
                                    child: Text(
                                        currentIndex == contents.length - 1 ? "Get Started" : "Get Started"),
                                    onPressed: () {
                                      if (currentIndex == contents.length - 1) {

                                      }
                                      controller.nextPage(
                                        duration: Duration(milliseconds: 100),
                                        curve: Curves.bounceIn,
                                      );
                                    },
                                    color: const Color(0xFF51AFAB),
                                    textColor: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                )
,
                            Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(top: 0),
                                    child: FlatButton(
                                      onPressed: () { Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                          builder: (_) => Login(),
                                        ),
                                      );},
                                      child: RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: 'Dont have an account? ',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: MediaQuery.of(context).size.height / 45,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                            TextSpan(
                                              text: 'Sigin Up ',
                                              style: TextStyle(
                                                color: Colors.teal,
                                                fontSize: MediaQuery.of(context).size.height / 45,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
               ],
              ),
            ) :

            Container(
              //for large screen
              width: screenSize.width,
              height: screenSize.height,
              child: Column(
                children: <Widget>[
                  //Lets make container for picture



                  Container(

                    height: 60,


                    margin: const EdgeInsets.fromLTRB(280, 20, 0, 20),
                    width: 120,
                    child: MaterialButton(
                      onPressed: () {

                      },

                      color: const Color(0xFFFAF2E7),
                      textColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(60),
                      ),
                      child: const Text(
                          "Skip"),
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.only(bottom: 64),

                    child: Image.asset("images/logo.png", fit: BoxFit.contain,),
                  ),

                ],
              ),

            )



          ],
        ),

      ),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(


      height: 10,
      width: currentIndex == index ? 25 : 10,
      margin: EdgeInsets.only(right: 5),

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
          color: const Color(0xFFE7BC82),

      ),
    );
  }
}

