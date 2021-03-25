import 'package:flutter/material.dart';
import 'package:loginecommerc/constcolors.dart';
import 'package:loginecommerc/customwidgets.dart';
import 'package:loginecommerc/loginpage.dart';
class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  final GlobalKey<FormState> _globalKey =GlobalKey<FormState>();
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Kmaincolor,
      body: Form(
        key: _globalKey,
        child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.1,
                child: Stack(
                  alignment: Alignment.center,
                  children: <Widget>[
                    Image(
                      image: AssetImage('images/icons/buy2.png'),
                    ),
                    Positioned(
                        bottom: 0,
                        child: Text(
                          'buy it',
                          style: TextStyle(
                            fontFamily: 'Pacifico',
                            fontSize: 20,
                          ),
                        )),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            CustomTextField('first name',Icons.person),
            SizedBox(height: 10,),
            CustomTextField('last name',Icons.person),

            SizedBox(
              height: 10,
            ),
            CustomTextField('Enter Password',Icons.visibility_off),
            SizedBox(height: 10,),
            CustomTextField('confirm Enter Password',Icons.visibility_off),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 90),
              child: FlatButton(
                color: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                onPressed: () {
                  _globalKey.currentState.validate();
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context)=>Loginpage()));
                },
                child: Text('Save ',
                  style:TextStyle(
                      fontSize: 16,
                      fontFamily: 'Pacifico',
                      color: Colors.white
                  ),),
              ),
            ),
            SizedBox(height: 20,),

          ],
        ),
      ),
    );
  }
}

