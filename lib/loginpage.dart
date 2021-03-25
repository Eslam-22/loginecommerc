import 'package:flutter/material.dart';
import 'package:loginecommerc/constcolors.dart';
import 'package:loginecommerc/signuppage.dart';
import 'package:loginecommerc/customwidgets.dart';

class Loginpage extends StatefulWidget {
  @override
  _LoginpageState createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  @override
  final GlobalKey<FormState> _globalKey=GlobalKey<FormState>();
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Kmaincolor,
      body:Form(
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
            CustomTextField('enter your email', Icons.email),


            SizedBox(
              height: 4,
            ),
    CustomTextField('enter your pasword', Icons.visibility),
            SizedBox(height: 15,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 90),
              child: FlatButton(
                color: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                onPressed: () {
                  _globalKey.currentState.validate();
                  Navigator.push(
                      context,
                    MaterialPageRoute(builder: (context) =>Signup()),
                  );
                },
                child: Text('login',
                style:TextStyle(
                  fontSize: 16,
                  fontFamily: 'Pacifico',
                    color: Colors.white
                ),),
              ),
            ),
            SizedBox(height: 20,),
           GestureDetector(
               onTap: (){
                 Navigator.push(context,
                   MaterialPageRoute(builder: (context)=>Signup()),
                 );
               },
                child :Text("Dont have acount ? Signup",
                textAlign: TextAlign.center,
                style: TextStyle(

                  fontSize: 20,
                  color: Colors.black,
                  fontFamily: 'Pacifico'
                ),

                ),
           ),



          ],
        ),
      ),
    );
  }
}

