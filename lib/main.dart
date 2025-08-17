import 'package:baseapp/controller/authenti_provider.dart';
import 'package:baseapp/controller/data_provider.dart';
import 'package:baseapp/firebase_options.dart';
import 'package:baseapp/view/auth/login_page.dart';
import 'package:baseapp/view/auth/sign_up_page.dart';
import 'package:baseapp/view/display.dart';
import 'package:baseapp/view/screens/data_add.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => AuthentiProvider()),
        ChangeNotifierProvider(create: (context) => DataProvider()),
      ],

      child: MaterialApp(debugShowCheckedModeBanner: false, home:  DataAdd()),
    );
  }
}
