import 'package:flutter/material.dart';
import 'package:flutter_login/authentication.dart';
import 'login_screen.dart';
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp( MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return MultiProvider(
     providers: null,
     child: MaterialApp(
       title: 'Flutter login UI',
       debugShowCheckedModeBanner: false,
       home: Authentication(),
     )
   );
  }
}
//4:35 se shuru krna hai video
//https://www.youtube.com/watch?v=oJ5Vrya3wCQ
class Authentication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
