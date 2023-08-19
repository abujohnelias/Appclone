import 'package:clone_app/view/sections/homeScreenSection/selectDirection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage1 extends StatefulWidget {
  const HomePage1({super.key});

  @override
  State<HomePage1> createState() => _HomePageState1();
}

class _HomePageState1 extends State<HomePage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        child: Stack(
          children: [
            ///bg image
            Container(
              width: double.infinity,
              height: 250,
              child: Image.network(
                "https://images.unsplash.com/photo-1613238906889-26b3eb9cf9a7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80",
                fit: BoxFit.fitWidth,
              ),
            ),

            ///text
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                "Lets Book Your\nFlights",
                style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              ),
            ),

            ///card(contain from & to)
            Positioned(
              top: 90,
              left: 50,
              child: SizedBox(
                  width: 400,
                  height: 300,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Selectdirection(),
                    color: Colors.white,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
