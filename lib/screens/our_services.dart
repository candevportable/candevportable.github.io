import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'contents/our_services_content.dart';

class OurServices extends StatelessWidget {
  const OurServices({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(
          color: Color(0XFF0A0024),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "CanDev",
          style: TextStyle(
              color: Color(0XFF0A0024),
              fontFamily: "Neuropolitical Rg",
              fontSize: 26),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
          child: Column(
            children: [
              Text(
                "Nossos Serviços",
                textAlign: TextAlign.center,
                style: GoogleFonts.roboto(
                  textStyle: const TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 30,
                    height: 1.5,
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text.rich(
                      TextSpan(
                        text: "Engenharia de Requisitos:",
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 22,
                        ),
                        children: <InlineSpan>[
                          TextSpan(
                            text: services1,
                            style: GoogleFonts.roboto(
                              textStyle: const TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 22,
                                height: 1.3,
                                overflow: TextOverflow.clip,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text.rich(
                      TextSpan(
                        text: "Projeto e Desenvolvimento de Aplicativos:",
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 22,
                        ),
                        children: <InlineSpan>[
                          TextSpan(
                            text: services2,
                            style: GoogleFonts.roboto(
                              textStyle: const TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 22,
                                height: 1.3,
                                overflow: TextOverflow.clip,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text.rich(
                      TextSpan(
                        text: "Projeto e Desenvolvimento de API’s:",
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 22,
                        ),
                        children: <InlineSpan>[
                          TextSpan(
                            text: services3,
                            style: GoogleFonts.roboto(
                              textStyle: const TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 22,
                                height: 1.3,
                                overflow: TextOverflow.clip,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text.rich(
                      TextSpan(
                        text: "Projeto e Desenvolvimento de Sistemas e Sites:",
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 22,
                        ),
                        children: <InlineSpan>[
                          TextSpan(
                            text: services4,
                            style: GoogleFonts.roboto(
                              textStyle: const TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 22,
                                height: 1.3,
                                overflow: TextOverflow.clip,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
