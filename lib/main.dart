import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testdevdeva/page/signin/signin.dart';
import 'package:testdevdeva/provider/provider.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return 
   MultiProvider(
     providers: [
        ChangeNotifierProvider(create: (_) => Providers()),
      ],
     child: const MaterialApp(
            debugShowCheckedModeBanner: false,
            home: SignInPage(),),
   );
  }
}
