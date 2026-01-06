import 'package:flutter/material.dart';
import '../model/selectch_model.dart';

class ChapterCard extends StatelessWidget {
  const ChapterCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(SelectChText.length, (index) {
        final item = SelectChText[index];
        return Container(
          margin: const EdgeInsets.only(bottom: 20),
          padding: const EdgeInsets.all(15),
          width: MediaQuery.of(context).size.width * 0.9,
          height: MediaQuery.of(context).size.height*0.08,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(12),
          ),
          child:
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                    Text(item['chapter']),
                  Icon(Icons.arrow_forward_ios)
                ],
              ),

        );
      }),
    );
  }
}
