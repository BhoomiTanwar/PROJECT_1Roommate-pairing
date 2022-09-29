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
                children: <Widget>[
                  const Image(
                    image: AssetImage('assets/CB_LOGO_BW 1 (1).png'),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                          'CELESTIAL',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            letterSpacing: 2.0,
                            fontSize: 14,
                          ),
                      ),
                      Text(
                        'BISCUIT',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          letterSpacing: 2.0,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
                'Roommate Pairing',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 2.0,
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Looking for roommate?',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 1.0,
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 2,
            ),
            const Text(
              'Try Roommate Pairing',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 1.0,
                fontSize: 16,
              ),
            ),
            const SizedBox(
                height: 20.0
            ),
            const Image(
              image: AssetImage('assets/image 1.png'),
              fit: BoxFit.contain,
            ),
          ], //children
        ),
      ),
      PageViewModel(
        title: '',
        bodyWidget: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children:const <Widget> [
            SizedBox(
              height: 10,
            ),
            Text(
              'Roommate Pairing',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 1.0,
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                'You can find roommates according to your diet, branch, state and multiple preferences',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  letterSpacing: 1.0,
                ),
              ),
            ),
            SizedBox(
                height: 20,
            ),
            Image(
              image: AssetImage('assets/image 2.png'),
              fit: BoxFit.fill,
            ),
          ], //children
        ),
      ),
      PageViewModel(
        title: '',
        bodyWidget: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children:const <Widget> [
            SizedBox(
              height: 10,
            ),
            Text(
              'Roommate Pairing',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 1.0,
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                'End your search for roommate with Roommate pairing.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 1.0,
                  fontSize: 16,
                ),
              ),
            ),
            Text(
              'Come and join us !',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 1.0,
                fontSize: 16,
              ),
            ),
            SizedBox(height: 20.0),
            Image(
              image: AssetImage('assets/image 3.png'),
              fit: BoxFit.fill,
            ),
          ], //children
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xff24293E),
        body: Column(
          children: <Widget>[
            Expanded(
              child: IntroductionScreen(
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
            ElevatedButton(
              onPressed: () {},

              style: ButtonStyle(
                padding: MaterialStateProperty.all(
                  const EdgeInsets.symmetric(horizontal: 120),
                ),
                backgroundColor: MaterialStateProperty.all<
                    Color>(const Color(0xff8EBBFF)),
                shape: MaterialStateProperty.all(
                  const StadiumBorder(),
                ),
                shadowColor: MaterialStateProperty.all<
                Color>(const Color(0xff8ebbff)),
                elevation: MaterialStateProperty.all<
                    double>(5),
              ),
              child: const Text("End your Search"),
            ),
            const SizedBox(
              height:50,
            ),
          ],
        ),
      ),
    );
  }
}
