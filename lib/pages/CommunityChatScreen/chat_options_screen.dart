import 'package:flutter/material.dart';

class ChatOptionsSheet extends StatelessWidget {
  const ChatOptionsSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _OptionTile(Icons.flag, "Report", Colors.red),
          _OptionTile(Icons.volume_off, "Mute Conversation", Colors.black),
          _OptionTile(Icons.push_pin, "Pin Conversation", Colors.black),
          _OptionTile(Icons.block, "Block User", Colors.red),
          _OptionTile(Icons.delete, "Delete Conversation", Colors.red),
        ],
      ),
    );
  }
}

class _OptionTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final Color color;

  const _OptionTile(this.icon, this.title, this.color);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(title, style: TextStyle(color: color)),
      onTap: () => Navigator.pop(context),
    );
  }
}
