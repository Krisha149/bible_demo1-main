import 'package:flutter/material.dart';

class HolyBotAIScreen extends StatelessWidget {
  const HolyBotAIScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFE6C7),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 30),

            // Title
            const Text(
              "Raise your Question to\nHolybot AI",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Color(0xffE67E22),
              ),
            ),

            const SizedBox(height: 40),

            // Character Image
            Expanded(
              child: Center(
                child: Image.asset(
                  "assets/holybot.png",
                  height: 260,
                ),
              ),
            ),

            // Bottom Mic Section
            Container(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 34,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.mic,
                      size: 30,
                      color: Colors.orange,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
