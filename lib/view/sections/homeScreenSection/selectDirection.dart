import 'package:clone_app/widgets/CusElevatedButton.dart';
import 'package:clone_app/widgets/CusIconButton.dart';
import 'package:clone_app/widgets/CusTextField.dart';
import 'package:clone_app/widgets/cusFloatingButton.dart';
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
  String to = "";
  String from = "";
  String temp = "";

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
                    color: Color.fromARGB(255, 235, 235, 235),
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
                    textfieldBorderColor: Colors.amber,
                    onChanged: (String toValue) {
                      to = toValue;
                      print(to);
                    },
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  CusTextField(
                    textfieldHeight: 50,
                    textfieldWidth: 350,
                    textfieldPadding: 10,
                    textfieldRadious: 20,
                    textfieldBorderColor: Colors.cyan,
                    onChanged: (String fromValue) {
                      from = fromValue;
                      print(from);
                    },
                  ),
                ],
              ),

              ///iconbutton used to swap to & from
              Positioned(
                top: 30,
                right: 10,
                child: RotatedBox(
                  quarterTurns: 5,
                  child: CUsFloatingButton(
                    onPressed: () {
                      setState(() {
                        temp = to;
                        to = from;
                        from = temp;
                        print(from);
                        print(to);
                      });
                    },
                    isFloatingButtonChild_Text: false,
                    floatingbuttoIcon: Icons.compare_arrows_rounded,
                    floatingbuttoIconColor: Colors.white,
                    floatingbuttoIconSize: 35,
                    floatingbuttonElevation: 20,
                  ),
                ),
              ),

              ///other elements and text

              /* elements and text for "FROM" textfield(start)*/
              const Positioned(
                top: 5,
                left: 15,
                child: RotatedBox(
                  quarterTurns: 5,
                  child: Icon(
                    Icons.airplanemode_active_rounded,
                    color: Colors.amber,
                    size: 25,
                  ),
                ),
              ),
              Positioned(
                top: 1,
                left: 45,
                child: Text(
                  "From",
                  style: GoogleFonts.poppins(color: Colors.grey, fontSize: 12),
                ),
              ),
              /* elements and text for "FROM" textfield(end)*/

              /* elements and text for "TO" textfield(Start)*/
              const Positioned(
                top: 103,
                left: 15,
                child: RotatedBox(
                  quarterTurns: -5,
                  child: Icon(
                    Icons.airplanemode_active_rounded,
                    color: Colors.cyan,
                    size: 25,
                  ),
                ),
              ),
              Positioned(
                top: 85,
                left: 45,
                child: Text(
                  "To",
                  style: GoogleFonts.poppins(color: Colors.grey, fontSize: 12),
                ),
              ),
              /* elements and text for "TO" textfield(end)*/
            ],
          )
        ],
      ),
    );
  }
}
