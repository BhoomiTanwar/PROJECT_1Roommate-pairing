import 'package:cbigdtuw04/Pages/LoggIn.dart';
import 'package:cbigdtuw04/Pages/MyPhone.dart';
import 'package:cbigdtuw04/Pages/OTP_Verification.dart';
import 'package:flutter/material.dart';
import 'package:cbigdtuw04/Pages/SignUpScreen.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';

void main() {
  runApp(const SignUpScreen());
}

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);
  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(children: [
            SizedBox(
              height: 90,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: const Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                          size: 30,
                        ),
                      )),
                  Padding(
                    padding: EdgeInsets.only(left: 65),
                  ),
                  Text(
                    "Get Started ",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Container(
                height: 430,
                width: double.infinity,
                color: Colors.blue[400],
                child: Padding(
                  padding: EdgeInsets.all(15),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "EnterUsername",
                          labelText: "Username",
                          prefixIcon: Icon(
                            Icons.person_add_alt_rounded,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "Enter your Email",
                            labelText: "Email",
                            prefixIcon: Icon(
                              Icons.email_outlined,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "Enter Password",
                            labelText: "Password",
                            prefixIcon: Icon(
                              Icons.lock,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "Enter again",
                            labelText: " Confirm Password",
                            prefixIcon: Icon(
                              Icons.lock,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Center(
                        child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const MyPhoneScreen()));
                            },
                            child: Container(
                              height: 38,
                              width: 100,
                              color: Colors.blue[200],
                              child: const Center(
                                child: Text(
                                  "Sign Up",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 19),
                                ),
                              ),
                            )),
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(children: <Widget>[
              Expanded(
                child: new Container(
                    margin: const EdgeInsets.only(left: 35.0, right: 15.0),
                    child: Divider(
                      color: Colors.white,
                      height: 50,
                    )),
              ),
              Text("OR"),
              Expanded(
                child: new Container(
                    margin: const EdgeInsets.only(left: 15.0, right: 31.0),
                    child: Divider(
                      color: Colors.white,
                      height: 50,
                    )),
              ),
            ]),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SignInButton(
                Buttons.Google,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                text: "Login with Google",
                onPressed: () {},
              ),
            ),
            SizedBox(
              height: 3,
            ),
            Padding(
              padding: const EdgeInsets.all(3.0),
              child: SignInButton(
                Buttons.FacebookNew,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                text: "Login with Facebook",
                onPressed: () {},
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                      child: Text(
                        "Already have an Account? Login",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    const LogInScreen()));
                      }),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
