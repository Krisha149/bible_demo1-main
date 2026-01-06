import 'package:flutter/material.dart';
import '../model/biblecard.dart';

class BibleCard extends StatelessWidget {
  const BibleCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(BibleCardText.length, (index) {
        final item = BibleCardText[index];
        return Container(
          margin: const EdgeInsets.only(bottom: 14),
          padding: const EdgeInsets.all(15),
          width: MediaQuery.of(context).size.width*0.89,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(item['title1']!, style: const TextStyle(fontWeight: FontWeight.w500)),
                    Text(item['title2']!),
                  ],
                ),
              ),

              Icon(Icons.arrow_forward_ios,)
              ],

          ),
        );
      }),
    );
  }
}
