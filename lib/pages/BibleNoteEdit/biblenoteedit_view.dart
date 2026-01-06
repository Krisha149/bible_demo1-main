import 'package:flutter/material.dart';

class BibleNoteEditScreen extends StatelessWidget {
  const BibleNoteEditScreen({super.key});

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
                "Save",
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
          children: [
            const Text(
              "Last Edited: Wednesday, Nov 20",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
            const SizedBox(height: 16),

            /// Text Editor Box
            Container(
              height: 220,
              padding: const EdgeInsets.all(14),
              decoration: BoxDecoration(
                color: const Color(0xffF7F7F7),
                borderRadius: BorderRadius.circular(14),
              ),
              child: const TextField(
                maxLines: null,
                expands: true,
                decoration: InputDecoration(
                  hintText: "Write your note here...",
                  border: InputBorder.none,
                ),
              ),
            ),

            const SizedBox(height: 16),

            /// Formatting bar
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              decoration: BoxDecoration(
                color: const Color(0xffF2F2F2),
                borderRadius: BorderRadius.circular(14),
              ),
              child: Row(
                children: [
                  _formatButton("B"),
                  _formatButton("I"),
                  _formatButton("U"),
                  const Spacer(),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xffF6A623),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                      elevation: 0,
                    ),
                    child: const Text(
                      "Done",
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  static Widget _formatButton(String text) {
    return Container(
      margin: const EdgeInsets.only(right: 8),
      child: OutlinedButton(
        onPressed: () {},
        style: OutlinedButton.styleFrom(
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          side: const BorderSide(color: Colors.grey),
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
        ),
        child: Text(
          text,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}