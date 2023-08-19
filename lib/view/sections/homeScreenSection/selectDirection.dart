import 'package:clone_app/widgets/CusElevatedButton.dart';
import 'package:clone_app/widgets/CusIconButton.dart';
import 'package:clone_app/widgets/CusTextField.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class Selectdirection extends StatefulWidget {
  Selectdirection({super.key});

  @override
  State<Selectdirection> createState() => _SelectdirectionState();
}

class _SelectdirectionState extends State<Selectdirection> {
  List ButtonItems = [
    "One Way",
    "Round Trip",
    "Multi-City",
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ///type of trip selecting buttons
          SizedBox(
            height: 60,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.black38,
                    borderRadius: BorderRadius.circular(15)),
                child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (BuildContext context, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          currentIndex = index;
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.zero,
                        height: 100,
                        width: 125.1,
                        child: Center(
                            child: Text(
                          ButtonItems[index],
                          style: GoogleFonts.poppins(
                              color: currentIndex == index
                                  ? Colors.black
                                  : Colors.black54,
                              fontWeight: currentIndex == index
                                  ? FontWeight.w500
                                  : FontWeight.normal),
                        )),
                        decoration: BoxDecoration(
                            color: currentIndex == index ? Colors.cyan : null,
                            borderRadius: currentIndex == index
                                ? BorderRadius.circular(15)
                                : BorderRadius.zero),
                      ),
                    );
                  },
                  scrollDirection: Axis.horizontal,
                  itemCount: ButtonItems.length,
                ),
              ),
            ),
          ),

          SizedBox(
            height: 30,
          ),

          ///from & to textfield
          Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CusTextField(
                    textfieldHeight: 50,
                    textfieldWidth: 350,
                    textfieldPadding: 10,
                    textfieldRadious: 20,
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  CusTextField(
                    textfieldHeight: 50,
                    textfieldWidth: 350,
                    textfieldPadding: 10,
                    textfieldRadious: 20,
                  ),
                ],
              ),

              ///iconbutton used to swap to & from
              // CusElevatedButton(
              //     onPressed: () {},
              //     buttonRadious: 10,
              //     IsYourButtonChildTEXT: false,
              //     buttonIcon: Icons.swap_vert_outlined,buttonHeight: 10,buttonWidth: 10,)
            ],
          )
        ],
      ),
    );
  }
}
