import 'package:flutter/material.dart';
import 'package:newnew/home.dart';
import 'package:shared_preferences/shared_preferences.dart';




class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  bool visible = false;
  final _formsignupKey = GlobalKey<FormState>();

  final email = TextEditingController();
  final name = TextEditingController();
  final password = TextEditingController();
  final phone = TextEditingController();





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(221, 71, 122, 1),

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Visibility(
              visible: visible,
                child: Container(
                  child: LinearProgressIndicator(),
                ),
            ),
            SizedBox(height: 90,),

            Text('SIGN UP',
              style: TextStyle(
                color: Colors.white,
                fontSize: 75,
                fontWeight: FontWeight.bold
              ),
            ),

            SizedBox(height: 10,),

            Form(
              key: _formsignupKey,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 22),
                child: Column(
                  children: [
                    TextFormField(
                      controller: name,
                      decoration: InputDecoration(
                        labelStyle: TextStyle(color: Colors.white),

                        focusedBorder: new OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                            color: Colors.white,
                            style: BorderStyle.solid,
                          ),
                        ),

                        enabledBorder: new OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                            style: BorderStyle.solid,
                          ),
                        ),

                        errorBorder: new OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                            color: Colors.red,
                            width: 1,
                            style: BorderStyle.solid,
                          ),
                        ),

                        labelText: 'User Name',
                        prefixIcon: const Icon(
                          Icons.person,
                          color: Colors.white,
                        ),

                        border: new OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                            color: Colors.white,
                            style: BorderStyle.solid,
                          ),
                        ),
                        hintText: 'Enter User Name'
                      ),

                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please Enter User Name';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 20,),
                    TextFormField(
                      controller: email,
                      decoration: InputDecoration(
                          labelStyle: TextStyle(color: Colors.white),

                          focusedBorder: new OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                              color: Colors.white,
                              style: BorderStyle.solid,
                            ),
                          ),

                          enabledBorder: new OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white,
                              style: BorderStyle.solid,
                            ),
                          ),

                          errorBorder: new OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                              color: Colors.red,
                              width: 1,
                              style: BorderStyle.solid,
                            ),
                          ),

                          labelText: 'EMail',
                          prefixIcon: const Icon(
                            Icons.person,
                            color: Colors.white,
                          ),

                          border: new OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                              color: Colors.white,
                              style: BorderStyle.solid,
                            ),
                          ),
                          hintText: 'Enter Email'
                      ),

                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please Enter Email';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 20,),
                    TextFormField(
                      controller: phone,
                      decoration: InputDecoration(
                          labelStyle: TextStyle(color: Colors.white),

                          focusedBorder: new OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                              color: Colors.white,
                              style: BorderStyle.solid,
                            ),
                          ),

                          enabledBorder: new OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white,
                              style: BorderStyle.solid,
                            ),
                          ),

                          errorBorder: new OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                              color: Colors.red,
                              width: 1,
                              style: BorderStyle.solid,
                            ),
                          ),

                          labelText: 'Phone Number',
                          prefixIcon: const Icon(
                            Icons.person,
                            color: Colors.white,
                          ),

                          border: new OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                              color: Colors.white,
                              style: BorderStyle.solid,
                            ),
                          ),
                          hintText: 'Enter Phone Number'
                      ),

                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please Enter Phone Number';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 20,),
                    TextFormField(
                      controller: password,
                      obscureText: true,
                      decoration: InputDecoration(
                          labelStyle: TextStyle(color: Colors.white),


                          focusedBorder: new OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                              color: Colors.white,
                              style: BorderStyle.solid,
                            ),
                          ),

                          enabledBorder: new OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white,
                              style: BorderStyle.solid,
                            ),
                          ),

                          errorBorder: new OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                              color: Colors.red,
                              width: 1,
                              style: BorderStyle.solid,
                            ),
                          ),

                          labelText: 'Password',
                          prefixIcon: const Icon(
                            Icons.person,
                            color: Colors.white,
                          ),

                          border: new OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                              color: Colors.white,
                              style: BorderStyle.solid,
                            ),
                          ),
                          hintText: 'Enter Password'
                      ),

                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please Enter Password';
                        }
                        return null;
                      },
                    ),

                    SizedBox(height: 30,),

                    Padding(
                        padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: new RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)
                          ),
                          primary: Color.fromRGBO(51, 51, 51, 1),
                        ),
                        onPressed: () => {
                          print(email.text),
                          print(name.text),
                          print(phone.text),
                          print(password.text),

                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context)=>HomeScreen())
                          ),

                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 62, vertical: 16),

                          child: Text(
                          'Sign Up',
                            style: TextStyle(fontSize: 22),
                      ),
                        ),
                      ),
                    )

                  ],

                ),
              ))
          ],
        ),
      ),
    );
  }
}
