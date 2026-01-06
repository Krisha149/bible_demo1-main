import 'package:flutter/material.dart';

class Dialouge extends StatefulWidget {
  const Dialouge({super.key});

  @override
  State<Dialouge> createState() => _DialougeState();
}

class _DialougeState extends State<Dialouge> {
  Future<void> showMyDialog(BuildContext context) {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Welcome'),
          content: const Text('GeeksforGeeks'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('CANCEL'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('ACCEPT'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}

