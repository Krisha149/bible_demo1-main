import 'package:flutter/material.dart';

class PremiumPlanScreen extends StatelessWidget {
  const PremiumPlanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5F5F5),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const BackButton(color: Colors.black),
        title: const Text(
          "Premium Plan",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _premiumBanner(),
            const SizedBox(height: 16),
            _actionCards(),
            const SizedBox(height: 24),
            _historySection(),
          ],
        ),
      ),
    );
  }

  // 🔶 Top Premium Banner
  Widget _premiumBanner() {
    return Container(
      height: 140,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: const LinearGradient(
          colors: [Color(0xffFFA726), Color(0xffFFB74D)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            right: 16,
            bottom: 0,
            child: Image.asset(
              "assets/holybot.png", // placeholder image
              height: 120,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Premium Plan",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                const SizedBox(height: 6),
                const Text(
                  "Get unlimited chatbot questions",
                  style: TextStyle(color: Colors.white70),
                ),
                const Spacer(),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepOrange,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text("Upgrade to Premium"),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  // 🔲 Two square action cards
  Widget _actionCards() {
    return Row(
      children: [
        Expanded(
          child: _squareCard(
            icon: Icons.mic,
            title: "Talk with\nFather",
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: _squareCard(
            icon: Icons.send,
            title: "Send message\nto Father",
          ),
        ),
      ],
    );
  }

  Widget _squareCard({required IconData icon, required String title}) {
    return Container(
      height: 140,
      decoration: BoxDecoration(
        color: const Color(0xffFFB74D),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(icon, color: Colors.white, size: 32),
            const Spacer(),
            Text(
              title,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
            )
          ],
        ),
      ),
    );
  }

  // 📜 History Section
  Widget _historySection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text("History",
                style: TextStyle(
                    fontSize: 18, fontWeight: FontWeight.bold)),
            Text("View all",
                style: TextStyle(color: Colors.grey)),
          ],
        ),
        const SizedBox(height: 12),
        _historyTile(Icons.graphic_eq),
        _historyTile(Icons.email),
        _historyTile(Icons.graphic_eq),
      ],
    );
  }

  Widget _historyTile(IconData icon) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: Colors.orange.shade100,
            child: Icon(icon, color: Colors.orange),
          ),
          const SizedBox(width: 12),
          const Expanded(
            child: Text(
              "Can I ask how to understand this sentence...",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const Icon(Icons.more_vert),
        ],
      ),
    );
  }
}
