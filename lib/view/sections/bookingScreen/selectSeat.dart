import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import '../../../model/seatListmodel.dart';

class SelectSeat extends StatefulWidget {
  const SelectSeat({super.key});

  @override
  State<SelectSeat> createState() => _SelectSeatState();
}

class _SelectSeatState extends State<SelectSeat> {
  List<SeatList> seats = [
    SeatList(seatNumber: "A1", isOccupied: false),
    SeatList(seatNumber: "A2", isOccupied: false),
    SeatList(seatNumber: "A3", isOccupied: false),
    SeatList(seatNumber: "A4", isOccupied: true),
    SeatList(seatNumber: "B1", isOccupied: false),
    SeatList(seatNumber: "B2", isOccupied: false),
    SeatList(seatNumber: "B3", isOccupied: false),
    SeatList(seatNumber: "B4", isOccupied: true),
    SeatList(seatNumber: "C1", isOccupied: false),
    SeatList(seatNumber: "C2", isOccupied: false),
    SeatList(seatNumber: "C3", isOccupied: false),
    SeatList(seatNumber: "C4", isOccupied: true),
    
  ];
  @override
  Widget build(BuildContext context) {

    ///seat sections
    return ListView(
      children: [
        Expanded(
          child: GridView.builder(physics: NeverScrollableScrollPhysics(),shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 2),
            padding: EdgeInsets.all(10),
            itemCount: seats.length,
            itemBuilder: (context, index) {
              final seat = seats[index];
              return Container(
                decoration: BoxDecoration(
                    color: seat.isOccupied
                        ? Colors.orange
                        : Color.fromARGB(255, 225, 225, 225),
                    borderRadius: BorderRadius.circular(15)),
                height: 1,
                width: 1,
                child: Center(child: Text(seat.seatNumber)),
              );
            },
          ),
        ),
      ],
    );
  }
}
