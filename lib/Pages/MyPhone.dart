import 'package:flutter/material.dart';
import 'package:cbigdtuw04/Pages/OTP_Verification.dart';
import 'package:cbigdtuw04/Pages/MyPhone.dart';

class MyPhoneScreen extends StatefulWidget {
  const MyPhoneScreen({Key? key}) : super(key: key);

  @override
  State<MyPhoneScreen> createState() => _MyPhoneScreenState();
}

class _MyPhoneScreenState extends State<MyPhoneScreen> {
  TextEditingController countrycode = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    countrycode.text = "+91";
    Colors.white;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 241, 174, 241),
        body: Column(
          children: [
            Padding(
                padding: EdgeInsets.only(left: 10),
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: const Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                    size: 50,
                  ),
                )),
            SizedBox(
              height: 110,
            ),
            Container(
              margin: EdgeInsets.only(left: 25, right: 25),
              alignment: Alignment.center,
              child: SingleChildScrollView(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/call.png',
                    width: 250,
                    height: 250,
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    "Phone Number Verification ",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "We need your phone number before getting started ",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 55,
                    decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.white),
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        SizedBox(
                            width: 40,
                            child: TextField(
                                controller: countrycode,
                                decoration:
                                    InputDecoration(border: InputBorder.none))),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "|",
                          style: TextStyle(fontSize: 33, color: Colors.white),
                        ),
                        Expanded(
                            child: TextField(
                                decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Phone',
                        ))),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                      height: 45,
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const OTPverificationScreen()));
                          },
                          child: Text("Send the OTP"),
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 104, 9, 107),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                          ))),
                ],
              )),
            ),
          ],
        ));
  }
}
