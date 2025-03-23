import 'package:accordion/accordion.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qubit/shared/ui/logo/enterprise_logo.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        EnterpriseLogo(),
        Accordion(
          headerBackgroundColor: ColorScheme.of(context).secondaryContainer,
          paddingBetweenClosedSections: 0,
          paddingBetweenOpenSections: 0,
          paddingListTop: 0,
          paddingListHorizontal: 0,
          headerBorderRadius: 0,
          children: [
            AccordionSection(
              header: ListTile(
                title: Text("Mapa", style: GoogleFonts.openSansCondensed()),
              ),
              content: Column(
                children: [
                  InkWell(
                    onTap: () {
                      Get.toNamed("/mapa");
                    },
                    child: ListTile(
                      title: Text(
                        "Ver mapa",
                        style: GoogleFonts.openSansCondensed(),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: ListTile(
                      title: Text(
                        "Subopción 1-2",
                        style: GoogleFonts.openSansCondensed(),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: ListTile(
                      title: Text(
                        "Subopción 1-3",
                        style: GoogleFonts.openSansCondensed(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            AccordionSection(
              header: ListTile(
                title: Text("Opción 2", style: GoogleFonts.openSansCondensed()),
              ),
              content: Column(
                children: [
                  InkWell(
                    onTap: () {},
                    child: ListTile(
                      title: Text(
                        "Subopción 2-1",
                        style: GoogleFonts.openSansCondensed(),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: ListTile(
                      title: Text(
                        "Subopción 2-2",
                        style: GoogleFonts.openSansCondensed(),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: ListTile(
                      title: Text(
                        "Subopción 2-3",
                        style: GoogleFonts.openSansCondensed(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            AccordionSection(
              header: ListTile(
                title: Text("Opción 3", style: GoogleFonts.openSansCondensed()),
              ),
              content: Column(
                children: [
                  InkWell(
                    onTap: () {},
                    child: ListTile(
                      title: Text(
                        "Subopción 3-1",
                        style: GoogleFonts.openSansCondensed(),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: ListTile(
                      title: Text(
                        "Subopción 3-2",
                        style: GoogleFonts.openSansCondensed(),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: ListTile(
                      title: Text(
                        "Subopción 3-3",
                        style: GoogleFonts.openSansCondensed(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
