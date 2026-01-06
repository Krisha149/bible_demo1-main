import 'package:flutter/material.dart';

class BibleNoteViewScreen extends StatelessWidget {
  const BibleNoteViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const Icon(Icons.arrow_back, color: Colors.black),
        title: const Text(
          "John 3:16 —",
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 12),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xffF6A623),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                padding:
                const EdgeInsets.symmetric(horizontal: 18, vertical: 8),
                elevation: 0,
              ),
              child: const Text(
                "Edit",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          const Icon(Icons.more_vert, color: Colors.black),
          const SizedBox(width: 8),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "Last Edited: Wednesday, Nov 20",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
            SizedBox(height: 16),
            Text(
              "Jesus' conversation with Nicodemus about being born again. "
                  "The concept of spiritual rebirth is central...",
              style: TextStyle(
                fontSize: 14,
                height: 1.5,
                color: Colors.black87,
              ),
            ),
          ],
        ),
      ),
    );
  }
}