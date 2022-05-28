import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget{
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}


class _LoginScreenState extends State<LoginScreen>{
  bool? isRememberMe =false;

  //widget 1
  Widget buildEmail() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('Email',
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 7),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(color: Colors.black,
                  blurRadius: 6,
                  offset: Offset(0,3),
                ),
              ]
          ),
          height: 60,
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
                color: Colors.black87
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 15),
              prefixIcon: Icon(
                Icons.email,
                color: Color(0xff574965),
              ),
              hintText: 'Email',
              hintStyle: TextStyle(
                color: Colors.black87,
              ),
            ),
          ),
        ),
      ],
    );
  }

  //widget 2
  Widget buildPassword(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('Password',
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 7),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(color: Colors.black,
                  blurRadius: 6,
                  offset: Offset(0,3),
                ),
              ]
          ),
          height: 60,
          child: TextField(
            obscureText: true,
            style: TextStyle(
                color: Colors.black87
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 15),
              prefixIcon: Icon(
                Icons.lock,
                color: Color(0xff574965),
              ),
              hintText: 'Password',
              hintStyle: TextStyle(
                color: Colors.black87,
              ),
            ),
          ),
        ),
      ],
    );
  }

  //widget 3
  Widget buildForgotPassBtn(){
    return Container(
      alignment: Alignment.centerRight,
      child: FlatButton(
        onPressed: () => print('Forgot Password Pressed'),
        padding: EdgeInsets.only(right: 0),
        child: Text('Forgot Password',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),),
      ),
    );
  }

  //widget 5
 Widget buildLogInBtn(){
    return RaisedButton(
      elevation: 5,
      onPressed: () => print('Login Pressed'),
      padding: EdgeInsets.symmetric(vertical: 14,horizontal: 110),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(11),
      ),
      //color: Colors.white,
      child: Text(
        'LOGIN',
        style: TextStyle(
          color: Color(0xcc574965),
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),

    );
 }

 //widget 6
 Widget buildSignUpBtn(){
    return GestureDetector(
      onTap: ()=> print('Sign Up Pressed'),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(width: 20,),
          Text("Sign In",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 19,
            decoration: TextDecoration.underline
          ),
          )
        ],
      ),
    );
 }



  @override
  Widget build(BuildContext context){
    return Scaffold(

        body: AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle.light,
          child: GestureDetector(
            child: Stack(
              children: <Widget>[
                Container(
                  height: double.infinity,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color(0x88574965),
                            Color(0x99574965),
                            Color(0xcc574965),
                            Color(0xff574965),
                          ],
                      ),
                  ),
                   child: SingleChildScrollView(
                     physics: AlwaysScrollableScrollPhysics(),
                     padding: EdgeInsets.symmetric(
                       horizontal: 25,
                       vertical: 120,
                     ),
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: <Widget>[
                         Text('Log In',
                           style: TextStyle(
                             color: Colors.black,
                             fontSize: 40,
                             fontWeight: FontWeight.bold,
                             fontFamily: "PTSans"
                           ),
                         ),
                         SizedBox(height: 40),
                         buildEmail(),
                         SizedBox(height: 30),
                         buildPassword(),
                         buildForgotPassBtn(),
                         SizedBox(height: 15,),
                         buildLogInBtn(),
                         SizedBox(height: 155,),

                         //buildSignUpBtn(),
                        // SizedBox(height: 50),
                       ],
                     ),
                   ),
                ),
                // Container(
                //   padding: EdgeInsetsDirectional.only(top: 550,bottom: 200,start: 30),
                //   child: Divider(
                //     thickness: 1,
                //     indent: 100,
                //     endIndent: 222,
                //     color: Colors.white,
                //   ),
                // ),
                // Container(
                //   padding: EdgeInsetsDirectional.only(top: 550,bottom: 200,start: 210),
                //   child: Text("OR",style: TextStyle(fontSize: 15,color: Colors.white),),
                // ),
                // Container(
                //   padding: EdgeInsetsDirectional.only(top: 550,bottom: 200,start: 80),
                //   child: Divider(
                //     thickness: 1,
                //     indent: 150,
                //     endIndent: 130,
                //     color: Colors.white,
                //   ),
                // ),
                // Container(
                //   padding: EdgeInsets.only(top: 590,bottom: 200,left: 0,right: 10),
                //     child: buildSignUpBtn(),
                // ),
              ],
            ),
          ),
        )
    );
  }
}