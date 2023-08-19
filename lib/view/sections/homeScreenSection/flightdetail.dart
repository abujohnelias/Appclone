import 'package:clone_app/view/sections/bookingScreen/bookingScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class FlightDetails extends StatelessWidget {
  FlightDetails({super.key});
  var flightImage = [
    "https://images.unsplash.com/photo-1574100413746-9428b41d2398?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80",
    "https://images.unsplash.com/photo-1559270144-0efbe8d2077b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzZ8fGZsaWdodHN8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1544290738-d2e921a1e8ef?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nzd8fGZsaWdodHN8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1575037884332-2d4d369ef1d6?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTR8fGZsaWdodHN8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60",
  ];

  var flightName = [
    "flight1",
    "flight2",
    "flight3",
    "flight4",
  ];

  var flightPrice = [
    "price1",
    "price2",
    "price3",
    "price4",
  ];

  var flightSlNo = [
    "HDA-ZCX",
    "ASD-TGY",
    "BHD-DFD",
    "TGF-EDH",
  ];

  var flightTime = [
    "10:00am-12:00PM",
    "10:05am-12:00PM",
    "10:20am-12:15PM",
    "10:10am-12:15PM",
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: flightName.length,
      // physics: NeverScrollableScrollPhysics(),
      itemBuilder: (BuildContext context, index) {
        return SizedBox(
          width: 400,
          height: 293,
          child: Stack(alignment: Alignment.topCenter, children: [
            ///image container
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Container(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(15)),
                height: 180,
                width: 350,
                child: Image.network(
                  flightImage[index],
                  fit: BoxFit.cover,
                ),
              ),
            ),

            ///price
            Positioned(
              top: 25,
              left: 30,
              child: Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: Colors.black87,
                    borderRadius: BorderRadius.circular(10)),
                child: Text(
                  flightPrice[index],
                  style: GoogleFonts.poppins(color: Colors.white),
                ),
              ),
            ),

            ///flight name
            Positioned(
              bottom: 65,
              left: 30,
              child: Row(
                children: [
                  Text(
                    flightName[index],
                    style: GoogleFonts.poppins(
                        color: Colors.black, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    width: 225,
                  ),
                  Text(
                    flightSlNo[index],
                    style: GoogleFonts.poppins(
                        color: Colors.grey, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),

            ///TIME AND BOOKING BUTTON
            Positioned(
              bottom: 20,
              left: 30,
              child: Row(children: [
                Icon(
                  Icons.alarm,
                  color: Colors.lightGreen,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  flightTime[index],
                  style: GoogleFonts.poppins(
                      color: Colors.grey, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  width: 95,
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BookingScreen()));
                    },
                    child: Wrap(
                      alignment: WrapAlignment.center,
                      children: [
                        Text(
                          "Book Now",
                          style: GoogleFonts.poppins(
                              color: Colors.orange,
                              fontSize: 15,
                              fontWeight: FontWeight.w600),
                        ),
                        Icon(
                          Icons.arrow_right_rounded,
                          color: Colors.orange,
                          size: 25,
                        )
                      ],
                    ))
              ]),
            ),
          ]),
        );
      },
    );
  }
}
