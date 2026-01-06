import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Eventdate extends StatefulWidget {
  final TextEditingController controller;
  final TextEditingController controller1;
  final int counterText;
  final int counterText1;



  const Eventdate({super.key,required this.controller,required this.controller1,required this.counterText,required this.counterText1});

  @override
  State<Eventdate> createState() => EventdateState();
}

class EventdateState extends State<Eventdate> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 30.0,top: 10,bottom: 10,right: 8.8),
          child: Container(
            width: MediaQuery.of(context).size.width*0.4,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Date")),
                  SizedBox(height: 10,),
                  SizedBox(
                    height: 40,
                    width: 150,
                    child: TextFormField(
                      controller: widget.controller,
                      validator: (v) {
                        if (v!.isEmpty) return "Date Required";
                        return null;
                      },
                      keyboardType: TextInputType.datetime,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        suffix: IconButton(
                          icon: Icon(Icons.calendar_month_outlined), onPressed: () {  },
                        ),
                      ),


                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.8,right: 30.0,top: 10,bottom: 10),
          child: Container(
            width: MediaQuery.of(context).size.width*0.4,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Time")),
                  SizedBox(height: 5,),
                  SizedBox(
                    height: 40,
                    width: 150,
                    child: TextFormField(
                      controller: widget.controller1,
                      validator: (v) {
                        if (v!.isEmpty) return "Time Required";
                        return null;
                      },
                      keyboardType: TextInputType.datetime,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        suffix: IconButton(
                          icon: Icon(Icons.watch_later_outlined), onPressed: () {  },
                        ),
                      ),


                    ),
                  ),
                ],
              ),
            ),
          ),
        ),

      ],
    );
  }
}
