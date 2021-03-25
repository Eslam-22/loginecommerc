import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:loginecommerc/constcolors.dart';
class CustomTextField extends StatelessWidget {
  String enterhint;
  final IconData  enterIcon;
  String errormessage (enterhint){
    switch (enterhint) {

      case 'enter your pasword' : return 'password is Empty';
      case 'enter your email' : return 'email  is Empty';
      case 'Enter Password' : return 'password  is Empty';
      case 'confirm Enter Password' : return 'email  is Empty';
      case 'first name' : return 'first name  is Empty';
      case 'last name' : return 'last name  is Empty';
    }
    }
  CustomTextField (
      @required this.enterhint,@required this.enterIcon,
      ) ;
  Widget build(BuildContext context) {
    // final String hint;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: TextFormField(
        validator: (value){
          if (value.isEmpty){
            return errormessage(enterhint);
          }
        },
        style: TextStyle(
          fontSize: 16,
          fontFamily: 'Pacifico',
        ),
        textAlign: TextAlign.left,
        cursorColor: Kmaincolor,
        decoration: InputDecoration(
          fillColor: Ksidecolor,
          filled: true,
          prefixIcon: Icon(
          enterIcon,
          ),
          hintText: enterhint,
          //prefixIcon: Icon(),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(20),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(20),
          ),
        ),

      ),
    );

  }

}
