import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter/foundation.dart';

import 'my_home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final isWebMobile = kIsWeb &&
      (defaultTargetPlatform == TargetPlatform.iOS ||
          defaultTargetPlatform == TargetPlatform.android);
  await SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp],
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  final String title = 'CanDev';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: Welcome(),
    );
  }
}

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  bool _loading = true;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 8), () {
      setState(() {
        _loading = !_loading;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return _loading
        ? Scaffold(
            backgroundColor: Colors.white,
            body: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 120.0),
                child: Column(
                  children: [
                    Text(
                      "CanDev",
                      style: TextStyle(
                          color: Color(0XFF0A0024),
                          fontFamily: "Neuropolitical Rg",
                          fontSize: 64),
                    ),
                    Text(
                      "portable development",
                      style: TextStyle(
                          color: Color(0XFF0A0024),
                          fontFamily: "Neuropolitical Rg",
                          fontSize: 18),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Lottie.asset("assets/assets/loading.json"),
                  ],
                ),
              ),
            ),
          )
        : MyHomePage();
  }
}
