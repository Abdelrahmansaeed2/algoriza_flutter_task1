import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:untitled/Login/Login.dart';
import 'package:untitled/Register/Registerscreen.dart';

class Widgets {
  Widget buildLogo(context) {
    final screenSize = MediaQuery.of(context).size;
    return Column(
      children: [
        Row(

          children: [
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child:        CountryCodePicker(
                onChanged: print,
                // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')

                // optional. Shows only country name and flag
                showCountryOnly: true,
                // optional. Shows only country name and flag when popup is closed.
                showOnlyCountryWhenClosed: false,
                // optional. aligns the flag and the Text left
                alignLeft: false,
              ),

            )
            ,


            Container(
              width: screenSize.width/5,


              child: Column(

                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "label",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color:Colors.black87
                            ),

                          ),
                          SizedBox(
                            height: 5,
                          ),
                          TextField(
                            obscureText: false,
                            decoration: InputDecoration(

                                suffixIcon: Icon(Icons.remove_red_eye) ,//icon at tail of input

                                contentPadding: EdgeInsets.symmetric(vertical: 0,
                                    horizontal: 10),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.grey
                                  ),

                                ),
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.grey)
                                )
                            ),
                          ),
                          SizedBox(height: 10,)
                        ],
                      ),
                    ],
                  ),



                ],

              ),
            ),


          ],
        )  ,

      ],
    );
  }

  Widget biulidCon(context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.6,
            width: MediaQuery.of(context).size.width * 0.8,
            decoration: BoxDecoration(color: Colors.white),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Login",
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height / 30),
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.all(8),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.email,
                          color: Colors.lightBlue[800],
                        ),
                        labelText: "E-mail"),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8),
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Colors.lightBlue[800],
                        ),
                        labelText: "Password"),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FlatButton(onPressed: () {}, child: Text("forget password"))
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 1.4 * (MediaQuery.of(context).size.height / 20),
                      width: 5 * (MediaQuery.of(context).size.width / 10),
                      margin: EdgeInsets.only(bottom: 20),
                      child: RaisedButton(
                        elevation: 5.0,
                        color: Colors.lightBlue[800],
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        child: Text(
                          "Login",
                          style: TextStyle(
                              color: Colors.white,
                              letterSpacing: 1.5,
                              fontSize:
                              MediaQuery.of(context).size.height / 40),
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 20),
                      child: Text(
                        "-OR-",
                        style: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 18),
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.lightBlue[800],
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black26,
                                  offset: Offset(0, 2),
                                  blurRadius: 6)
                            ]),
                        child: Icon(
                          FontAwesomeIcons.google,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    );
  }

  Widget buildSignin(context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(

      width: screenSize.width/1.2,
      child: Column(


        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 150,top: 40),
            child:       Text(

              "Welcome to Fashion Daily",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey,
              ),
            ),
          )
          , Padding(
            padding: EdgeInsets.only(right: 250,top: 10),
            child:       Text(
              textAlign: TextAlign.center,

              "Sign in",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),

          ),
          Padding(
            padding: EdgeInsets.only(top: 20),
            child:         Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Phone Number",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color:Colors.black87
                  ),

                ),
                SizedBox(
                  height: 5,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: Row(
                        children: [
                          CountryCodePicker(
                            showCountryOnly: true,
                            showOnlyCountryWhenClosed: false,
                            alignLeft: false,
                          ),
                          const Text('Eg.812345678',
                              style: TextStyle(
                                color: Colors.grey,
                              )),
                        ],
                      ),
                      border: const OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey,
                          )),
                      focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey,
                          ))),
                ),
                SizedBox(height: 10,)
              ],
            ),

          )
          ,Padding(

            padding: EdgeInsets.only(bottom: 5),
            child:     Container(
              width: screenSize.width/1.2,


              child: MaterialButton(

                onPressed: () {

                },

                color: Colors.blue,
                textColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Text(
                    "Sign in"),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 25),
            child:       Container(
              margin: EdgeInsets.symmetric(vertical: screenSize.height * 0.02),
              width: screenSize.width * 0.8,
              child: Row(
                children: <Widget>[
                  buildDivider(),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      "OR",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  buildDivider(),
                ],
              ),
            ),
          )
          ,
          Padding(

            padding: EdgeInsets.only(bottom: 5),
            child:     Container(
              width: screenSize.width/1.2,


              child: ElevatedButton.icon( // <-- OutlinedButton
                onPressed: () {},
                style: ElevatedButton.styleFrom(primary: Colors.white
                    ,onPrimary: Colors.black),
                icon: Image.asset('images/google.png'
                  ,height: 32,width: 32,),
                label: Text('Sign with by google'),


              ),
            ),
          ),
          Padding(

            padding: EdgeInsets.only(top: 5),
            child:     Container(
              width: screenSize.width/1.2,


              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 0),
                    child: FlatButton(
                      onPressed: () { Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (_) => Register(),
                        ),
                      );},
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'Doesnt has any account? ',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: MediaQuery.of(context).size.height / 50,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            TextSpan(
                              text: 'Register here ',
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: MediaQuery.of(context).size.height / 50,
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
            ),
          ),
          Padding(

            padding: EdgeInsets.only(top: 5),
            child:     Container(
                width: screenSize.width/1.2,


                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(height: 80),


                    Expanded(
                      child: Text("Use the application according to policy rules, Any kinds of violations will be subject to sanctions.",textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                            fontWeight: FontWeight.w100
                        ),),
                    ),
                  ],
                )
            ),
          ),



        ],
      ),
    );
  }
  Widget buildSignup(context) {
    final screenSize = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.only(right: 150,top: 40),
          child:       Text(

            "Welcome to Fashion Daily",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 15,
              color: Colors.grey,
            ),
          ),
        ),
        Row(

          children: [
            Padding(
              padding: const EdgeInsets.only(top: 5,left: 35),
              child:       Text(
                textAlign: TextAlign.center,

                "Register",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold
                ),
              ),

            )
            ,
            Padding(
              padding: const EdgeInsets.only(left: 140),




              child: TextButton(
                onPressed: () {},
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('Help', style: TextStyle(color: Colors.blue)), // <-- Text
                    SizedBox(
                      width: 5,
                    ),
                    Icon( // <-- Icon
                      Icons.help,
                      size: 24.0,
                      color: Colors.blue,
                    ),
                  ],
                ),
              ),
            ),


          ],
        )  ,
        Padding(
          padding: EdgeInsets.only(bottom: 5),
          child: Container(

            width: screenSize.width/1.2,


            child: Column(

              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    inputstext(label: "Email"),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Phone Number",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color:Colors.black87
                          ),

                        ),
                        SizedBox(
                          height: 5,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                              prefixIcon: Row(
                                children: [
                                  CountryCodePicker(
                                    showCountryOnly: true,
                                    showOnlyCountryWhenClosed: false,
                                    alignLeft: false,
                                  ),
                                  const Text('Eg.812345678',
                                      style: TextStyle(
                                        color: Colors.grey,
                                      )),
                                ],
                              ),
                              border: const OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.grey,
                                  )),
                              focusedBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.grey,
                                  ))),
                        ),
                        SizedBox(height: 10,)
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Password",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color:Colors.black87
                          ),

                        ),
                        SizedBox(
                          height: 5,
                        ),
                        TextField(
                          obscureText: true,
                          decoration: InputDecoration(

                              suffixIcon: Icon(Icons.remove_red_eye) ,//icon at tail of input

                              contentPadding: EdgeInsets.symmetric(vertical: 0,
                                  horizontal: 10),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.grey
                                ),

                              ),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey)
                              )
                          ),
                        ),
                        SizedBox(height: 10,)
                      ],
                    ),
                  ],
                ),




              ],

            ),
          ),

        )
        ,Padding(

          padding: EdgeInsets.only(bottom: 5),
          child:     Container(
            width: screenSize.width/1.2,


            child: MaterialButton(

              onPressed: () {

              },

              color: Colors.blue,
              textColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              child: const Text(
                  "Register"),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 25),
          child:       Container(
            margin: EdgeInsets.symmetric(vertical: screenSize.height * 0.02),
            width: screenSize.width * 0.8,
            child: Row(
              children: <Widget>[
                buildDivider(),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    "OR",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                buildDivider(),
              ],
            ),
          ),
        )
        ,
        Padding(

          padding: EdgeInsets.only(bottom: 5),
          child:     Container(
            width: screenSize.width/1.2,


            child: ElevatedButton.icon( // <-- OutlinedButton
              onPressed: () {},
              style: ElevatedButton.styleFrom(primary: Colors.white
                  ,onPrimary: Colors.black),
              icon: Image.asset('images/google.png'
                ,height: 32,width: 32,),
              label: Text('Sign with by google'),


            ),
          ),
        ),
        Padding(

          padding: EdgeInsets.only(top: 5),
          child:     Container(
            width: screenSize.width/1.2,


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
                            text: 'has any account? ',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: MediaQuery.of(context).size.height / 50,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          TextSpan(
                            text: 'Sign in here ',
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: MediaQuery.of(context).size.height / 50,
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
          ),
        ),
        Padding(

          padding: EdgeInsets.only(top: 5),
          child:     Container(
            width: screenSize.width/1.2,


            child:  Text(
              "by registering your account, you are agree to our ",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey,
              ),
            ),
          ),
        ),
        Padding(

          padding: EdgeInsets.only(top: 5),
          child:     Container(
            width: screenSize.width/1.2,


            child:  Text(
              "Terms and condition",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 12,
                color: Colors.blue,
              ),
            ),
          ),
        ),



      ],
    );
  }
  Widget inputstext({label, obscureText = false})
  {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          label,
          style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w400,
              color:Colors.black87
          ),

        ),
        SizedBox(
          height: 5,
        ),
        TextField(
          obscureText: obscureText,
          decoration: InputDecoration(

              contentPadding: EdgeInsets.symmetric(vertical: 0,
                  horizontal: 10),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Colors.grey
                ),

              ),
              border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey)
              )
          ),
        ),
        SizedBox(height: 10,)
      ],
    );
  }
  Expanded buildDivider() {
    return const Expanded(
      child: Divider(
        color: Color(0xFFD9D9D9),
        height: 1.5,
      ),
    );
  }
}

