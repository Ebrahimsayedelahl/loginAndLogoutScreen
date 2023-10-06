import 'package:flutter/material.dart';
import 'package:login_signup/widget.dart';

class Signup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(200.0),
          child: AppBar(
            flexibleSpace: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: <Color>[Color(0XFF6FB1D1), Color(0XFF3EE4BD)]),
              ),
            ),
          ),
      ),
      body: Stack(
        children: [
          Container(
            constraints: BoxConstraints.expand(),
            decoration: const BoxDecoration(
              color: Color(0XFFe5fbf9),
            ),
          ),
          Column(
            children: [

              SizedBox(height: 90,),
              buildTextWidget('SIGN UP'),
              SizedBox(height: 50,),
              buildTextFieldContainer('Email'),
              SizedBox(height: 20,),
              buildTextFieldContainer('Password'),
              SizedBox(height: 20,),
              buildTextFieldContainer('Confirm Password'),
              Row(
                children: [
                  SizedBox(width: 50,),
                  Text('forgot password?',style: TextStyle(fontSize: 15,color:Color(0XFF18988B)),),
                  SizedBox(width: 100,),
                  buildButton('SIGN UP',),
                ],),
              SizedBox(height:77,),
              buildMaterialButton('LOG IN', context),
            ],
          )
        ],
      ),
    );
  }
}