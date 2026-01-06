import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../widgets/continue.dart';
import 'missinginfo_controller.dart';


class MissinginfoView extends GetView<MissinginfoController> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.help, size: 50, color: Colors.orange),
            const SizedBox(height: 12),
            const Text(
              "Missing Information",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              "Please complete the following fields before publishing:",
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xFFFEF2F2),
                border: Border.all(color: Color(0xFFFEF2F2)),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Event Name'),
                    Text('Category'),
                    Text('Date'),
                    Text('Time'),
                    Text('Location'),
                    Text('Description'),
                  ],
                ),
              ),
            ),


            const SizedBox(height: 20),
            ButtonWidget(text: 'Got It', onTap: () {Get.back();} ,),


          ],
        ),
      ),
    );
  }

  Widget _infoRow(IconData icon, String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: [
          Icon(icon, size: 18),
          const SizedBox(width: 8),
          Expanded(child: Text(text)),
        ],
      ),
    );
  }
}
