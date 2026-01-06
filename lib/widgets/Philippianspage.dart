import 'package:flutter/material.dart';
import '../model/Philippians_model.dart';

class PhilippiansPage extends StatelessWidget {
  const PhilippiansPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(PhilippiansText.length, (index) {
        final item = PhilippiansText[index];
        return Container(
          // padding: const EdgeInsets.all(15),
          width: MediaQuery.of(context).size.width * 0.9,
          child:
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(item['index']),
              Flexible(child: Text(item['des'])),
            ],
          ),

        );
      }),
    );
  }
}
