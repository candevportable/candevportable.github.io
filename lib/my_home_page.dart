import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:vertical_card_pager/vertical_card_pager.dart';
import 'package:hawk_fab_menu/hawk_fab_menu.dart';

import 'app_conversas/screens/home_conversas.dart';
import 'app_loja_bolsas/screens/home/home_loja_bolsas.dart';
import 'app_floricultura/screens/home/home_floricultura.dart';
import 'app_viagens/screens/home_viagens.dart';
import 'app_loja_roupas/view/home/home_loja_roupas.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  Color background = Colors.white;
  double carousselOpacity = 0.0;

  changeBackground(Color? bg) {
    background = bg!;
  }

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(milliseconds: 1300), () {
      setState(() {
        carousselOpacity = 1;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  launchURL(url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    final List<String> titles = [
      "Loja de Flores",
      "Viagens",
      "Conversas",
      "Loja de Bolsas",
      "Loja de Roupas"
    ];

    final List<Widget> thumbnails = [
      Container(
        color: Color(0XFF0C9869),
        child: background == Color(0XFF0C9869)
            ? Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 10),
                  blurRadius: 120,
                  color: Colors.black.withOpacity(0.19),
                ),
              ],
              image: DecorationImage(
                  image: AssetImage("assets/assets/Loja_de_Flores.png")),
            ))
            : Image.asset("assets/assets/Loja_de_Flores.png"),
      ),
      Container(
        color: Colors.white,
        child: background == Colors.white
            ? Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 10),
                  blurRadius: 120,
                  color: Colors.black.withOpacity(0.19),
                ),
              ],
              image: DecorationImage(
                  image: AssetImage("assets/assets/Viagens.png")),
            ))
            : Image.asset("assets/assets/Viagens.png"),
      ),
      Container(
        color: Color(0XFFF44336),
        child: background == Color(0XFFF44336)
            ? Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 10),
                  blurRadius: 120,
                  color: Colors.black.withOpacity(0.19),
                ),
              ],
              image: DecorationImage(
                  image: AssetImage("assets/assets/Conversas.png")),
            ))
            : Image.asset("assets/assets/Conversas.png"),
      ),
      Container(
        color: Color(0XFF3D82AE),
        child: background == Color(0XFF3D82AE)
            ? Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 10),
                  blurRadius: 120,
                  color: Colors.black.withOpacity(0.19),
                ),
              ],
              image: DecorationImage(
                  image: AssetImage("assets/assets/Loja_de_Bolsas.png")),
            ))
            : Image.asset("assets/assets/Loja_de_Bolsas.png"),
      ),
      Container(
        color: Color(0xFFFFBD00),
        child: background == Color(0xFFFFBD00)
            ? Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 10),
                  blurRadius: 120,
                  color: Colors.black.withOpacity(0.19),
                ),
              ],
              image: DecorationImage(
                  image: AssetImage("assets/assets/Loja_de_Roupas.png")),
            ))
            : Image.asset("assets/assets/Loja_de_Roupas.png"),
      ),
    ];

    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
        backgroundColor: background,
        elevation: 0,
        title: Center(
            child: Text(
              "CanDev",
              style: TextStyle(color: Color(0XFF0A0024), fontFamily: "Neuropolitical Rg", fontSize: 26),
            )),
      ),
      body: HawkFabMenu(
        icon: AnimatedIcons.menu_close,
        fabColor: Color(0XFF0A0024),
        iconColor: Colors.white,
        items: [
          HawkFabMenuItem(
            label: 'WhatsApp',
            ontap: () {
              launchURL(
                  "https://wa.me/5561981184858?text=Olá,%20vi%20seu%20portifólio%20e%20me%20interessei%20pelos%20seus%20serviços");
            },
            icon: const Icon(FontAwesomeIcons.whatsapp),
            color: Theme.of(context).primaryColor,
          ),
          HawkFabMenuItem(
            label: 'Telegram',
            ontap: () {
              launchURL("https://t.me/pdanniel");
            },
            icon: const Icon(FontAwesomeIcons.telegramPlane),
            color: Theme.of(context).primaryColor,
          ),
        ],
        body: SafeArea(
          child: AnimatedOpacity(
            opacity: carousselOpacity,
            duration: Duration(seconds: 1),
            child: VerticalCardPager(
              textStyle: TextStyle(fontFamily: "Bevan", color: Colors.black.withOpacity(0.74)),
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
                } else if (2.6 < page && page < 3.6) {
                  setState(() {
                    changeBackground(Color(0XFF3D82AE));
                  });
                } else if (page > 3.6) {
                  setState(() {
                    changeBackground(Color(0xFFFFBD00));
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
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => HomeViagens()));
                    break;
                  case 2:
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => HomeConversas()));
                    break;
                  case 3:
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => HomeLojaBolsas()));
                    break;
                  case 4:
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => HomeLojaRoupas()));
                }
              },
            ),
          ),
        ),
      ),
    );
  }
}
