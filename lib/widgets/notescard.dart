import 'package:flutter/material.dart';
import '../model/home_model.dart';
import '../model/notescard_model.dart';
import '../resource/colors.dart';

class NotesCard extends StatelessWidget {
  const NotesCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
            (context, index) {
          return Container(
            margin: const EdgeInsets.only(bottom: 16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                ClipRRect(
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(16),
                  ),
                  child: Image.asset(
                    NotesCardText[index]['img']!,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Text(NotesCardText[index]['label']!),

                      const SizedBox(height: 8),
                      Text(NotesCardText[index]['title']!),

                      const SizedBox(height: 10),
                      Text(NotesCardText[index]['description']!),

                    ],
                  ),
                ),
              ],
            ),
          );
        },
        childCount: HomeEventText.length,
      ),
    );
  }
}
