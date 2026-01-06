import 'package:flutter/material.dart';
import '../model/appbar_model.dart';

class BibleUpperBar extends StatefulWidget {
  const BibleUpperBar({super.key,});

  @override
  State<BibleUpperBar> createState() => BibleUpperBarState();
}

class BibleUpperBarState extends State<BibleUpperBar> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: AppBarText3.length,
      itemBuilder: (context, index) {
        final item = AppBarText3[index];
        return Row(
          children: [
            Image.asset(item['leading'], height: 40),
            SizedBox(width: MediaQuery.of(context).size.width*0.3,),
            Text(item['title'], style: const TextStyle(fontSize: 18)),
          ],
        );
      },
    );
  }
}

