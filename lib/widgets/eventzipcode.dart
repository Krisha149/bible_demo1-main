import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Eventzipcode extends StatefulWidget {
  const Eventzipcode({super.key});

  @override
  State<Eventzipcode> createState() => EventzipcodeState();
}

class EventzipcodeState extends State<Eventzipcode> {
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
                  child: Text("ZIP Code")),
              SizedBox(height: 10,),
              SizedBox(
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    hintText: "90210",
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
