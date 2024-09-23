import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
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
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
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
                        fontSize: 11,
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
                      ListItem("Adventure"),
                      ListItem("Animation"),
                      ListItem("Thriller"),
                      ListItem("Comedy"),
                      ListItem("Drama"),
                      ListItem("Horror"),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 32),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Latest Movie",
                      style: GoogleFonts.inter(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xFFAAAAAD),
                      ),
                    ),
                    Text(
                      "View all",
                      style: GoogleFonts.inter(
                        fontSize: 11,
                        fontWeight: FontWeight.w600,
                        color: const Color.fromARGB(255, 183, 105, 36),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 10),
              GridView.count(
                padding: const EdgeInsets.all(10),
                shrinkWrap: true,
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  CardMovie(
                      urlImage:
                          'https://m.media-amazon.com/images/I/81do41OmwiL._AC_SY879_.jpg',
                      title: 'Inside Out 2'),
                  CardMovie(
                      urlImage:
                          'https://m.media-amazon.com/images/S/pv-target-images/21db30caab1124a16f615f4260734364d75dfafa5b19a2964c0f1593c10972cf.jpg',
                      title: 'Despicable Me 4'),
                ],
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Favorite Movie",
                      style: GoogleFonts.inter(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xFFAAAAAD),
                      ),
                    ),
                    Text(
                      "View all",
                      style: GoogleFonts.inter(
                        fontSize: 11,
                        fontWeight: FontWeight.w600,
                        color: const Color.fromARGB(255, 183, 105, 36),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 10),
              GridView.count(
                padding: const EdgeInsets.all(10),
                shrinkWrap: true,
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  CardMovie(
                      urlImage:
                          'https://akcdn.detik.net.id/community/media/visual/2024/06/07/bad-boys-ride-or-die-1_34.jpeg?w=550&q=90',
                      title: 'Bad Boys: Ride or Die'),
                  CardMovie(
                      urlImage:
                          'https://awsimages.detik.net.id/community/media/visual/2024/05/23/furiosa-a-mad-max-saga.jpeg?w=1200',
                      title: 'Furiosa: A Mad Max Saga'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Column CardMovie({urlImage, title}) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.network(
              urlImage,
              width: double.infinity,
              height: 300,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            title,
            style: GoogleFonts.inter(
              fontSize: 14,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }

  // ignore: non_constant_identifier_names
  Container ListItem(title) {
    return Container(
      width: 92,
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
        ),
      ),
    );
  }
}
