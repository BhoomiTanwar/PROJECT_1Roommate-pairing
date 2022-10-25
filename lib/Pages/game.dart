import 'package:flutter/material.dart';

class Game extends StatefulWidget {
  @override
  _GameState createState() => _GameState();
}

class _GameState extends State<Game> {
  @override
  Widget build(BuildContext context) {

    return  Scaffold(
        body: Container(
          padding: const EdgeInsets.all(50),
          alignment: Alignment.center,
          child: Column(
              children:<Widget>[
                const SizedBox(
                  height: 20,
                ),
                const Text(
                 'Rapid Fire Game',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Expanded(
                    child: Image(
                        image: AssetImage('assets/image 5.png'),
                     ),
                ),
                ElevatedButton(
                  onPressed: () {},

                  style: ButtonStyle(
                    padding: MaterialStateProperty.all(
                      const EdgeInsets.symmetric(horizontal: 60, vertical: 10),
                    ),
                    backgroundColor: MaterialStateProperty.all<
                        Color>(Colors.white),
                    shape: MaterialStateProperty.all(
                      const StadiumBorder(),
                    ),
                  ),
                  child: const Text('Tap on Spinner',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},

                  style: ButtonStyle(
                    padding: MaterialStateProperty.all(
                      const EdgeInsets.symmetric(horizontal: 60, vertical: 10),
                    ),
                    backgroundColor: MaterialStateProperty.all<
                        Color>(Color(0xffD9D9D9)),
                    shape: MaterialStateProperty.all(
                      const StadiumBorder(),
                    ),
                  ),
                  child: const Text('Next',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                ),
              ]
          ),
        )
    );
  }
}