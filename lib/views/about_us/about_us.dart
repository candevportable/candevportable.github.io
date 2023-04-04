import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'about_us_content.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

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
                aboutUs,
                textAlign: TextAlign.left,
                style: GoogleFonts.roboto(
                  textStyle: const TextStyle(
                    fontSize: 22,
                    height: 1.5,
                    overflow: TextOverflow.clip,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Missão",
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
                height: 10,
              ),
              Text(
                mission,
                textAlign: TextAlign.left,
                style: GoogleFonts.roboto(
                  textStyle: const TextStyle(
                    fontSize: 22,
                    height: 1.5,
                    overflow: TextOverflow.clip,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Visão",
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
                height: 10,
              ),
              Text(
                vision1,
                softWrap: true,
                textAlign: TextAlign.left,
                maxLines: null,
                style: GoogleFonts.roboto(
                  textStyle: const TextStyle(
                    fontSize: 22,
                    height: 1.5,
                    overflow: TextOverflow.clip,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                vision2,
                softWrap: true,
                textAlign: TextAlign.left,
                maxLines: null,
                style: GoogleFonts.roboto(
                  textStyle: const TextStyle(
                    fontSize: 22,
                    height: 1.5,
                    overflow: TextOverflow.clip,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                vision3,
                softWrap: true,
                textAlign: TextAlign.left,
                maxLines: null,
                style: GoogleFonts.roboto(
                  textStyle: const TextStyle(
                    fontSize: 22,
                    height: 1.5,
                    overflow: TextOverflow.clip,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Valores",
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
                height: 10,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "1. ",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.roboto(
                      textStyle: const TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 30,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: Text.rich(
                      TextSpan(
                        text: "EXCELÊNCIA:",
                        style: const TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 22,
                        ),
                        children: <InlineSpan>[
                          TextSpan(
                            text: values1,
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
                  Text(
                    "2. ",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.roboto(
                      textStyle: const TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 30,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: Text.rich(
                      TextSpan(
                        text: "INOVAÇÃO:",
                        style: const TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 22,
                        ),
                        children: <InlineSpan>[
                          TextSpan(
                            text: values2,
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
                  Text(
                    "3. ",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.roboto(
                      textStyle: const TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 30,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: Text.rich(
                      TextSpan(
                        text: "COLABORAÇÃO:",
                        style: const TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 22,
                        ),
                        children: <InlineSpan>[
                          TextSpan(
                            text: values3,
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
                  Text(
                    "4. ",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.roboto(
                      textStyle: const TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 30,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: Text.rich(
                      TextSpan(
                        text: "INTEGRIDADE:",
                        style: const TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 22,
                        ),
                        children: <InlineSpan>[
                          TextSpan(
                            text: values4,
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
                  Text(
                    "5. ",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.roboto(
                      textStyle: const TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 30,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: Text.rich(
                      TextSpan(
                        text: "COMPROMETIMENTO:",
                        style: const TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 22,
                        ),
                        children: <InlineSpan>[
                          TextSpan(
                            text: values5,
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
                  Text(
                    "6. ",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.roboto(
                      textStyle: const TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 30,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: Text.rich(
                      TextSpan(
                        text: "QUALIDADE:",
                        style: const TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 22,
                        ),
                        children: <InlineSpan>[
                          TextSpan(
                            text: values6,
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
                height: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
