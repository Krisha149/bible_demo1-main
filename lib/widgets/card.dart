
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../model/card_model.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(CardText.length, (index) {
        final item = CardText[index];
        return Container(
          margin: const EdgeInsets.only(bottom: 12),
          padding: const EdgeInsets.all(12),
          width: double.infinity,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 42,
                width: 42,
                padding: const EdgeInsets.all(6),
                decoration: BoxDecoration(
                  color: const Color(0xFFFFF7ED),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Image.asset(item['icon']!),
              ),

              const SizedBox(width: 12),

              Expanded(
                child: item['Direction'] == 'v'
                    ? Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(item['title1']!, style: const TextStyle(fontWeight: FontWeight.w500)),
                    Text(item['title2']!),
                    if (item['title3'] != null)
                      Text(item['title3']!),
                  ],
                )
                    : Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(item['title1']!, style: const TextStyle(fontWeight: FontWeight.w500)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(item['title2']!),
                        if (item['title3'] != null)
                          Text(item['title3']!),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
