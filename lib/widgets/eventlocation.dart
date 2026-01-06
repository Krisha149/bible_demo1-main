import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Eventlocation extends StatefulWidget {
  final TextEditingController controller;
  final int counterText;


  const Eventlocation({super.key,required this.controller,required this.counterText});

  @override
  State<Eventlocation> createState() => _EventlocationState();
}

class _EventlocationState extends State<Eventlocation> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30.0,right: 30.0,top: 10,bottom: 10),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[200],
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Location / Address")),
              SizedBox(height: 10,),
              SizedBox(
                child: TextFormField(
                  controller: widget.controller,
                  validator: (v) {
                    if (v!.isEmpty) return "Location Required";
                    return null;
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    hintText: "e.g., Grace Community Church",
                  ),

                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
