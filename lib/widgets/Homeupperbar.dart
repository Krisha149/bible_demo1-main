import 'package:bible_demo/widgets/zipcodecard.dart';
import 'package:flutter/material.dart';

import '../model/appbar_model.dart';
import 'continue.dart';

class homeUpper extends StatefulWidget {
  const homeUpper({super.key,});

  @override
  State<homeUpper> createState() => _homeUpperState();
}



class _homeUpperState extends State<homeUpper> {
  String selectedZip = "90210";
  void _show(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return Container(
          height: MediaQuery.of(context).size.height*0.7,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text("Change Location"), Icon(Icons.close)]),
                SizedBox(height:MediaQuery.of(context).size.height*0.02 ,),
                Divider(),
                SizedBox(height:MediaQuery.of(context).size.height*0.01 ,),
                Container(
                  height: MediaQuery.of(context).size.height * 0.07,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xFFFFF7ED),
                    border: Border.all(color: Color(0xFFF9A13D)),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: Color(0xFFF9A13D),
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                        child: Center(child: Icon(Icons.rounded_corner)),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Use Current Location"),
                          Text("Automatically detect your ZIP code"),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height:MediaQuery.of(context).size.height*0.03 ,),

                Align(alignment: Alignment.centerLeft,child: Text("Enter ZIP Code"),

                ),
                SizedBox(height:MediaQuery.of(context).size.height*0.02 ,),

                Container(
                  height: MediaQuery.of(context).size.height * 0.06,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xFFF9FAFB),
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [Icon(Icons.location_on_outlined),
                        SizedBox(width:MediaQuery.of(context).size.width*0.03),
                        Text(selectedZip)],
                    ),
                  ),
                ),
                SizedBox(height:MediaQuery.of(context).size.height*0.03 ,),

                Align(alignment: Alignment.centerLeft,child: Text("Recent Locations"),


                ),
                SizedBox(height:MediaQuery.of(context).size.height*0.02 ,),

                ZipCodeCardWidget(selectedZip: selectedZip,
                  onTap: (zip) {
                    setState(() {
                      selectedZip = zip;
                    });
                  },),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                        height: 50,
                        width: MediaQuery.of(context).size.width*0.4,
                        child: ButtonWidget(text: 'Cancel', onTap: () {  },)),
                    SizedBox(
                        height: 50,
                        width: MediaQuery.of(context).size.width*0.4,
                        child: ButtonWidget(text: 'Apply', onTap: () {  },)),
                  ],
                )



              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: AppBarText.length,
      itemBuilder: (context, index) {
        final item = AppBarText[index];
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(item['leading'], height: 40),
        Text(item['title'], style: const TextStyle(fontSize: 18)),
            GestureDetector(
              onTap: () => _show(context),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey,
                ),
                child:
                Text(item['action']),
              ),
            ),
          ],
        );
      },
    );
  }
}





void locCon(BuildContext context) {
  Container(
    height: MediaQuery.of(context).size.height * 0.15,
    width: double.infinity,
    decoration: BoxDecoration(
      color: Color(0xFFF9FAFB),
      border: Border.all(color: Colors.grey),
      borderRadius: BorderRadius.all(Radius.circular(10)),
    ),
    child: Row(children: [Icon(Icons.location_on_outlined), Text("90210")]),
  );
}
