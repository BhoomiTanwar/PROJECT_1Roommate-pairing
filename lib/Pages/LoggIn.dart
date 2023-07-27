import 'package:cbigdtuw04/Pages/MyPhone.dart';
import 'package:cbigdtuw04/Pages/OTP_Verification.dart';
import 'package:flutter/material.dart';
import 'package:cbigdtuw04/Pages/SignUpScreen.dart';
import 'package:cbigdtuw04/Pages/LoggIn.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 241, 174, 241),
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
                  "WELCOME BACK!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Color.fromARGB(255, 103, 3, 83),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          // Padding(
          //   padding: EdgeInsets.only(left: 55),
          // ),
          const Text(
            "Log In ",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
              color: Color.fromARGB(255, 104, 5, 76),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Container(
                height: 300,
                width: double.infinity,
                color: Color.fromARGB(255, 235, 107, 237),
                child: Padding(
                    padding: EdgeInsets.all(15),
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                            hintText: "Enter Username",
                            labelText: "Username",
                            prefixIcon: Icon(
                              Icons.person_add_alt_rounded,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          child: TextFormField(
                              obscureText: true,
                              decoration: InputDecoration(
                                hintText: "Enter Password",
                                labelText: "Password",
                                prefixIcon: Icon(
                                  Icons.lock,
                                ),
                              )),
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
                                color: Color.fromARGB(255, 101, 6, 95),
                                child: const Center(
                                  child: Text(
                                    "Log In",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 19),
                                  ),
                                ),
                              )),
                        )
                      ],
                    )),
              )),
          Padding(
            padding: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Forget Password?",
                  style: TextStyle(
                    color: Color.fromARGB(255, 103, 6, 97),
                    fontSize: 15,
                  ),
                ),
              ],
            ),
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
                    color: Color.fromARGB(255, 250, 237, 247),
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
                      "Don't have an account? CREATE ACCOUNT",
                      style: TextStyle(
                        color: Color.fromARGB(255, 104, 5, 86),
                        fontSize: 15,
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const SignUpScreen()));
                    }),
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
        ]))));
  }
}
