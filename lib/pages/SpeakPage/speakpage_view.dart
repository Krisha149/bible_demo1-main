import 'package:flutter/material.dart';

class SpeckPageScreen extends StatelessWidget {
  const SpeckPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFE6C7),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 40),

            // Text
            const Text(
              "Can I ask how to\nunderstand this\nsentence.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                color: Color(0xffE67E22),
                fontWeight: FontWeight.w500,
              ),
            ),

            const SizedBox(height: 60),

            // Fake Waveform
            Expanded(
              child: Center(
                child: Icon(
                  Icons.graphic_eq,
                  size: 120,
                  color: Colors.orange,
                ),
              ),
            ),

            // Bottom Control Bar
            Container(
              margin: const EdgeInsets.all(16),
              padding: const EdgeInsets.symmetric(vertical: 14),
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _iconButton(Icons.close, Colors.red),
                  Column(
                    children: const [
                      CircleAvatar(
                        radius: 26,
                        backgroundColor: Colors.white,
                        child: Icon(Icons.mic, color: Colors.orange),
                      ),
                      SizedBox(height: 6),
                      Text(
                        "05:25",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  _iconButton(Icons.check, Colors.green),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _iconButton(IconData icon, Color color) {
    return CircleAvatar(
      radius: 22,
      backgroundColor: Colors.white,
      child: Icon(icon, color: color),
    );
  }
}
