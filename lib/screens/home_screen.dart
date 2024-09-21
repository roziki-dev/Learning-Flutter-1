import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(
      children: [
        const SizedBox(
          height: 24,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Welcome Joko 👋',
                    style: GoogleFonts.inter(
                        fontSize: 11,
                        fontWeight: FontWeight.w800,
                        color: const Color(0xFF585B64)),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "Let's relax and watch a movie!",
                    style: GoogleFonts.inter(
                        fontSize: 14,
                        fontWeight: FontWeight.w800,
                        color: const Color(0xFFB4B4B7)),
                  )
                ],
              ),
              IconButton(
                  onPressed: () => {},
                  icon: const Icon(Icons.person_2_outlined)),
            ],
          ),
        ),
        const SizedBox(height: 32),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
          margin: const EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: const Color(0xFF2E2E37),
          ),
          child: Row(children: [
            const Icon(
              Icons.search,
              size: 24,
              color: Color.fromARGB(255, 117, 117, 122),
            ),
            const SizedBox(width: 8),
            Text(
              'Search movie ...',
              style: GoogleFonts.inter(
                  fontSize: 12,
                  fontWeight: FontWeight.w800,
                  color: const Color(0xFF5F5F63)),
            )
          ]),
        ),
        const SizedBox(
          height: 32,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Categories",
                style: GoogleFonts.inter(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xFFAAAAAD),
                ),
              ),
              Text(
                "View all",
                style: GoogleFonts.inter(
                  fontSize: 10,
                  fontWeight: FontWeight.w600,
                  color: const Color.fromARGB(255, 157, 87, 27),
                ),
              )
            ],
          ),
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 32,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                ListItem("Action"),
                ListItem("Comedy"),
                ListItem("Romance"),
                ListItem("Horor"),
                ListItem("Adventure"),
              ],
            ),
          ),
        )
      ],
    )));
  }

  // ignore: non_constant_identifier_names
  Container ListItem(title) {
    return Container(
      width: 81,
      margin: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: const Color(0xFF33333C)),
      child: TextButton(
          onPressed: () {},
          child: Text(
            title,
            style: GoogleFonts.inter(
              fontSize: 11,
              fontWeight: FontWeight.w600,
              color: const Color.fromARGB(255, 255, 255, 255),
            ),
          )),
    );
  }
}
