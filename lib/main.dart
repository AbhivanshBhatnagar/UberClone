import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:uberclone/Screens/homescreen.dart';
import 'package:uberclone/Screens/loginscreen.dart';
import 'package:uberclone/Screens/registerScreen.dart';
import 'package:firebase_core/firebase_core.dart';
void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}
DatabaseReference UserReference=FirebaseDatabase.instance.reference().child("users");
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.white),
      routes: {
        HomeScreen.ScreenId:(context)=>HomeScreen(),
        LoginScreen.ScreenId:(context)=>LoginScreen(),
        RegistrationScreen.ScreenId:(context)=>RegistrationScreen()
      },
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',

      initialRoute: LoginScreen.ScreenId,
    );
  }
}

