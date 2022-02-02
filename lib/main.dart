import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vertical_card_pager/vertical_card_pager.dart';

import '/app_conversas/screens/home_conversas.dart';
import '/app_loja_bolsas/screens/home/home_loja_bolsas.dart';
import '/app_floricultura/screens/home/home_floricultura.dart';
import '/app_viagens/screens/home_viagens.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp],
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
      home: MyHomePage(
        key: key,
        title: title,
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color background = Colors.white;

  void changeBackground(Color? bg) {
    background = bg!;
  }

  @override
  Widget build(BuildContext context) {
    final List<String> titles = [
      "Loja de Flores",
      "Viagens",
      "Conversas",
      "Loja de Bolsas"
    ];
    final List<Widget> thumbnails = [
      Container(
        color: Color(0XFF0C9869),
        child: Image.asset("assets/assets/Loja_de_Flores.png"),
      ),
      Container(
        color: Colors.white,
        child: Image.asset("assets/assets/Viagens.png"),
      ),
      Container(
        color: Color(0XFFF44336),
        child: Image.asset("assets/assets/Conversas.png"),
      ),
      Container(
        color: Color(0XFF3D82AE),
        child: Image.asset("assets/assets/Loja_de_Bolsas.png"),
      ),
    ];

    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
        backgroundColor: background,
        elevation: 0,
        title: Center(
            child: Text(
              widget.title,
              style: TextStyle(color: Colors.black, fontFamily: "Bevan"),
            )),
      ),
      body: SafeArea(
        child: VerticalCardPager(
          textStyle: TextStyle(fontFamily: "Bevan", color: Colors.black87),
          titles: titles,
          images: thumbnails,
          initialPage: 1,
          onPageChanged: (page) {
            if (page! < 0.6) {
              setState(() {
                changeBackground(Color(0XFF0C9869));
              });
            } else if (0.6 < page && page < 1.6) {
              setState(() {
                changeBackground(Colors.white);
              });
            } else if (1.6 < page && page < 2.6) {
              setState(() {
                changeBackground(Color(0XFFF44336));
              });
            } else if (page > 2.6) {
              setState(() {
                changeBackground(Color(0XFF3D82AE));
              });
            }
          },
          onSelectedItem: (index) {
            switch (index) {
              case 0:
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => HomeFloricultura()));
                break;
              case 1:
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => HomeViagens()));
                break;
              case 2:
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => HomeConversas()));
                break;
              case 3:
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => HomeLojaBolsas()));
            }
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Increment',
        onPressed: () {},
        child: const Icon(Icons.message),
      ),
    );
  }
}
