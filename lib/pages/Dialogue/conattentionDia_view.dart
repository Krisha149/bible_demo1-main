import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../route/routes.dart';
import '../../widgets/continue.dart';
import 'conattentionDia_controller.dart';

class ConattentionDiaViewEvent {
  static void showDialog({required BuildContext context}) {
    Get.dialog(
      ConattentionDiaView(),
      useSafeArea: true,
      barrierDismissible: false,
      barrierColor: Colors.black.withOpacity(0.4),
    );
  }
}

class ConattentionDiaView extends GetView<ConattentionDiaController> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.event_available, size: 50, color: Colors.orange),
            const SizedBox(height: 12),
            const Text(
              "Confirm Your Attendance",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              "You're about to join this event. We'll send you a confirmation and reminder.",
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),

            _infoRow(Icons.calendar_today, "Wednesday Night Bible Study"),
            _infoRow(Icons.access_time, "Wed, 7:00 PM - 9:00 PM"),
            _infoRow(Icons.location_on, "Grace Community Church"),

            const SizedBox(height: 20),
            // ElevatedButton(
            //   onPressed: controller.onConfirm,
            //   style: ElevatedButton.styleFrom(
            //     backgroundColor: Colors.orange,
            //     minimumSize: const Size(double.infinity, 45),
            //   ),
            //   child: const Text("Confirm & Join"),
            // ),
            ButtonWidget(text: 'Confirm & Join', onTap: () =>Get.offAllNamed(Routes.your_set) ,),
            const SizedBox(height: 10),

            // TextButton(
            //   onPressed: Get.back,
            //   child: const Text("Cancel"),
            // )
            ButtonWidget(text: 'Cancel', onTap: () =>Get.back ),

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
