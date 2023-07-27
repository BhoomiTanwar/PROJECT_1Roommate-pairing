import 'package:cbigdtuw04/blocs/bloc/newswipe_bloc.dart';
import 'package:cbigdtuw04/blocs/swipe_bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:cbigdtuw04/Pages/OTP_Verification.dart';
import 'package:cbigdtuw04/Pages/SignUpScreen.dart';
import 'package:cbigdtuw04/Pages/MyPhone.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'Pages/LoggIn.dart';

import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'models/models.dart';
import 'onboarding_screens/bio_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => SwipeBloc()),
        BlocProvider(create: (_) => NewswipeBloc()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Roomie UI',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: BioScreen(),
      ),
    );
  }
} //MaterialApp
