import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class slider extends StatelessWidget {
  List<PageViewModel> getPages() {
    return [
      PageViewModel(
        title: '',
        bodyWidget: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children:[
            Flexible(
              child: Row(
                children: const <Widget>[
                  Image(
                    image: AssetImage('assets/CB_LOGO_BW 1 (1).png'),
                  ),
                  Text(
                      'CELESTIAL BISCUIT',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        letterSpacing: 2.0,
                        fontSize: 14,
                      ),
                  ),
                ],
              ),
            ),
            const Text(
                'Roommate Pairing',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 2.0,
                  fontSize: 32,
                ),
              ),
            const Text(
              'Looking for a roommate?',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0,
                fontSize: 16,
              ),
            ),
            const Text(
              'Try Roommate Pairing',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0,
                fontSize: 16,
              ),
            ),
            SizedBox(height: 10.0),
            const Image(
              image: AssetImage('assets/image 1.png'),
              fit: BoxFit.fill,
            ),
          ], //children
        ),

        footer: ElevatedButton(
          onPressed: () {
            // On button pressed
          },
          child: const Text("End your Search"),
        ),
      ),
      PageViewModel(
        title: '',
        bodyWidget: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children:const <Widget> [
            Text(
              'Roommate Pairing',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0,
                fontSize: 32,
              ),
            ),
            Text(
              'You can find roommates according to your diet, branch, state and multiple preferences',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0,
                fontSize: 16,
              ),
            ),

            SizedBox(height: 10.0),
            Image(
              image: AssetImage('assets/image 2.png'),
              fit: BoxFit.fill,
            ),
          ], //children
        ),

        footer: ElevatedButton(
          onPressed: () {
            // On button pressed
          },
          child: const Text("End your Search"),
        ),
      ),
      PageViewModel(
        title: '',
        bodyWidget: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children:const <Widget> [
            Text(
              'Roommate Pairing',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0,
                fontSize: 32,
              ),
            ),
            Text(
              'End your search for roommate with Roommate pairing.',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0,
                fontSize: 16,
              ),
            ),
            Text(
              'Come and join us !',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0,
                fontSize: 16,
              ),
            ),
            SizedBox(height: 10.0),
            Image(
              image: AssetImage('assets/image 3.png'),
              fit: BoxFit.fill,
            ),
          ], //children
        ),

        footer: ElevatedButton(
          onPressed: () {
            // On button pressed
          },
          child: const Text("End your Search"),
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: IntroductionScreen(
          done: const Text('Done',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          onDone: () {},
          pages: getPages(),
          showNextButton: false,
          showDoneButton: false,
          globalBackgroundColor: const Color(0xff24293E),
        ),
      ),
    );
  }
}
