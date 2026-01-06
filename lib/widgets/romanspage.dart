import 'package:flutter/material.dart';
import '../model/romans_model.dart';

class RomansPage extends StatelessWidget {
  const RomansPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(RomansText.length, (index) {
        final item = RomansText[index];
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
