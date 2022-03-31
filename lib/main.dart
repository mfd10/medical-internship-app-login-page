import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Home_Page/home_page.dart';
import 'package:flutter_auth/Screens/Login/components/login.dart';
import 'package:flutter_auth/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async{
  LoginScreen();
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences preferences = await SharedPreferences.getInstance();
  var email = preferences.getString('email');
  runApp(MaterialApp(home: email == null ? LoginScreen() : HomePage(),)); }

/*class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Auth',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: LoginScreen(),
    );
  }
}
*/