import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomepage(),
    );
  }
}

class MyHomepage extends StatelessWidget {
  const MyHomepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(children: [
            Image.asset(
              "photo/back.jpg",
              height: (MediaQuery.of(context).size.height),
              width: (MediaQuery.of(context).size.width),
              fit: BoxFit.fill,
            ),
            Positioned(
              top: 65,
              left: 22,
              child: Image.asset("photo/chef.jpg"),
            ),
            Positioned(
                top: 416,
                right: 65,
                child: Container(
                  height: 285,
                  width: 270,
                  decoration: BoxDecoration(
                    color: const Color(0xffFE8C00),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        "We will make \n Your Stomach Full\n and Healthy.",
                        style: GoogleFonts.poppins(
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        "All the best restaurants with their \n top menu waiting for you,they can't \n wait for your order! ",
                        style: GoogleFonts.poppins(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      CircleAvatar(
                        radius: 40,
                        backgroundColor: Colors.white,
                        child: IconButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: ((context) => const Orderpage())));
                            },
                            icon: const Icon(
                              Icons.arrow_forward_outlined,
                              color: Color(0xffFE8C00),
                            )),
                      ),
                    ],
                  ),
                )),
          ]),
        ],
      ),
    );
  }
}

class Orderpage extends StatelessWidget {
  const Orderpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Stack(children: [
          Image.asset(
            "photo/secback.jpg",
            width: double.infinity,
          ),
          const Positioned(
            top: 50,
            left: 25,
            child: Text(
              "Your Location :",
              style: TextStyle(color: Colors.white),
            ),
          ),
          const Positioned(
              top: 55,
              right: 20,
              child: Icon(
                Icons.circle_notifications,
                color: Colors.white,
                size: 35,
              )),
          const Positioned(
              top: 70,
              left: 20,
              child: Icon(
                Icons.location_on,
                color: Colors.white,
                size: 25,
              )),
          const Positioned(
            top: 73,
            left: 50,
            child: Text(
              "Bharatpur,Chitwan ",
              style: TextStyle(color: Colors.white),
            ),
          ),
          const Positioned(
            top: 115,
            left: 20,
            child: Text(
              "Order your \n Favorite Food",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 32),
            ),
          ),
        ])
      ],
    ));
  }
}
