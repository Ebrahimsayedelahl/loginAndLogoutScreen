import 'package:flutter/material.dart';
Widget buildTextFieldContainer(String label) {
  return Container(
    width: 300,
    decoration: BoxDecoration(
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.2),
          spreadRadius: 2,
          blurRadius: 7,
        ),
      ],
    ),
    child: TextField(
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 2, color:Color(0XFF18988B)), //<-- SEE HERE
        ),
        labelText: label,
      ),
    ),
  );
}



Widget buildTextWidget(String label) {
  return Text(label,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Color(0XFF18988B),),);
}



Widget buildButton(String label) {
  return ElevatedButton(
    onPressed: () {

    },
    style: ElevatedButton.styleFrom(
      backgroundColor: Color(0XFF3EE4BD),
    ),
    child: Text(label),
  );
}





Widget buildMaterialButton(String label , BuildContext context) {
  return Container(
    height: 60,
    width: double.maxFinite,
    child: MaterialButton(
      onPressed: () {
        if (label == 'SIGN UP') {
          Navigator.pushNamed(context, '/signup');
        } else if (label == 'LOG IN') {
          Navigator.pushNamed(context, '/login');
        }
      },
      child: Text(
        label,
        style: TextStyle(fontSize: 30),
      ),
      color: Color(0XFF3EE4BD),
      textColor: Colors.white,
    ),
  );
}