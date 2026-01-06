import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../widgets/continue.dart';
import 'eventpublish_controller.dart';

class EventpublishView extends GetView<EventpublishController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Icon(Icons.check_circle, size: 90, color: Colors.green),
            SizedBox(height:MediaQuery.of(context).size.height* 0.04),
            const Text(
              "Event Published!",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height:MediaQuery.of(context).size.height* 0.04),
            const Text(
              "Your event is now live and visible to the community in your area.",
              textAlign: TextAlign.center,
            ),
            SizedBox(height:MediaQuery.of(context).size.height* 0.04),
            infoContainer(desc: 'Share your event to reach more people in your community. You can manage or edit this event anytime from your profile.',bg: Color(0xFFEFF6FF)),
            SizedBox(height:MediaQuery.of(context).size.height* 0.04),
            ButtonWidget(text: 'Share Event', onTap: () =>controller.goToMyEvents(),),
            SizedBox(height:MediaQuery.of(context).size.height* 0.02),
            ButtonWidget(text: 'View My Event', onTap: () {  },),
            SizedBox(height:MediaQuery.of(context).size.height* 0.02),
            ButtonWidget(text: 'Back to Home', onTap: () {  },),

          ],
        ),
      ),
    );
  }

  Widget infoContainer({
    required String desc,
    required Color bg,
  }) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsetsDirectional.all(14),
      decoration: BoxDecoration(
        color: bg,
        border: Border.all(color: bg),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Center(child: Text(desc, style: const TextStyle(fontWeight: FontWeight.w600))),
    );
  }

}
