import 'package:clone_app/view/sections/homeScreenSection/homescreen.dart';
import 'package:clone_app/widgets/CusElevatedButton.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Firstscreen extends StatefulWidget {
  const Firstscreen({super.key});

  @override
  State<Firstscreen> createState() => _FirstscreenState();
}

class _FirstscreenState extends State<Firstscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topLeft,
        children: [
          ///bg image
          Container(
            width: double.infinity,
            height: double.infinity,
            child: Image.network(
                "https://images.unsplash.com/photo-1613238906889-26b3eb9cf9a7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80",
                fit: BoxFit.cover),
          ),

          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              "Find And Book\nA Great Experience",
              style: GoogleFonts.poppins(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          ///text2
          Positioned(
            left: 20,
            top: 100,
            child: Text(
              "Going forward after a pandemic that \ndevastated the airline industry",
              style: GoogleFonts.poppins(
                fontSize: 13,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),

          ///custom elevatedbutton
          Positioned(
            left: 10,
            top: 150,
            child: CusElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePage1(),
                    ));
              },
              buttonText: "Get Tickets",
              buttonTextColor: Colors.white,
              buttonRadious: 12,
              buttonColor: Colors.amberAccent,
              buttonHeight: 50,
              buttonWidth: 130,
              buttonPadding: 10,
              IsYourButtonChildTEXT: true,
            ),
          ),
        ],
      ),
    );
  }
}
