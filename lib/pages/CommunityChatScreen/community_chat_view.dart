import 'package:flutter/material.dart';

import 'chat_options_screen.dart';

class CommunityChatScreen extends StatelessWidget {
  const CommunityChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          children: [
            CircleAvatar(
              radius: 18,
              backgroundImage: AssetImage('assets/user.png'),
            ),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Sarah Johnson", style: TextStyle(fontSize: 16)),
                Text("Online",
                    style: TextStyle(fontSize: 12, color: Colors.green)),
              ],
            )
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {
              showModalBottomSheet(
                context: context,
                shape: const RoundedRectangleBorder(
                  borderRadius:
                  BorderRadius.vertical(top: Radius.circular(20)),
                ),
                builder: (_) => const ChatOptionsSheet(),
              );
            },
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(16),
              children: const [
                _ChatBubble(
                  text: "Hey! How are you doing?",
                  isMe: false,
                ),
                _ChatBubble(
                  text:
                  "I'm great! Are you coming to the Bible study tomorrow?",
                  isMe: true,
                ),
                _ChatBubble(
                  text: "Yes! I'll be there. Looking forward to it!",
                  isMe: false,
                ),
              ],
            ),
          ),
          _MessageInput(),
        ],
      ),
    );
  }
}

class _ChatBubble extends StatelessWidget {
  final String text;
  final bool isMe;

  const _ChatBubble({required this.text, required this.isMe});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 6),
        padding: const EdgeInsets.all(12),
        constraints: const BoxConstraints(maxWidth: 260),
        decoration: BoxDecoration(
          color: isMe ? Colors.orange : Colors.grey.shade200,
          borderRadius: BorderRadius.circular(14),
        ),
        child: Text(
          text,
          style: TextStyle(color: isMe ? Colors.white : Colors.black),
        ),
      ),
    );
  }
}

class _MessageInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Row(
        children: [
          const Icon(Icons.emoji_emotions_outlined),
          const SizedBox(width: 8),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: "Message...",
                filled: true,
                fillColor: Colors.grey.shade100,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          const SizedBox(width: 8),
          const CircleAvatar(
            backgroundColor: Colors.orange,
            child: Icon(Icons.send, color: Colors.white),
          )
        ],
      ),
    );
  }
}
