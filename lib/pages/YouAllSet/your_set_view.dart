import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../widgets/Event_reminder.dart';
import '../../widgets/continue.dart';
import 'your_set_controller.dart';

class YourSetView extends GetView<YourSetController> {
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
              "You're All Set!",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height:MediaQuery.of(context).size.height* 0.04),
            const Text(
              "You've successfully joined the event. We've sent a confirmation to your email.",
              textAlign: TextAlign.center,
            ),
            SizedBox(height:MediaQuery.of(context).size.height* 0.04),
        // const SliverPadding(
        //   padding: EdgeInsets.symmetric(horizontal: 15),
        //     sliver:EventReminderWidget(),
        // ),
            // EventReminderWidget(),
            ButtonWidget(text: 'View My Events', onTap: () =>controller.goToMyEvents(),),
            SizedBox(height:MediaQuery.of(context).size.height* 0.02),

            // ElevatedButton(
            //   onPressed: controller.goToMyEvents,
            //   child: const Text("View My Events"),
            // ),
            ButtonWidget(text: 'Back to Home', onTap: () {  },),
            SizedBox(height:MediaQuery.of(context).size.height* 0.5),

            Text("Need to cancel? You can do so anytime from My Events")

            // TextButton(
            //   onPressed: controller.backHome,
            //   child: const Text("Back to Home"),
            // )
          ],
        ),
      ),
    );
  }
}
