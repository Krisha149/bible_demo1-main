import 'package:flutter/material.dart';
import '../model/Event_reminder_model.dart';
import '../resource/colors.dart';

class EventReminderWidget extends StatelessWidget {
  const EventReminderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: EventReminderText.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          height: MediaQuery.of(context).size.height*0.1,
          margin: const EdgeInsets.only(bottom: 16),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: Color(0xFFDCFCE7))
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      child: Text(EventReminderText[index]['smallTitle']!),
                    ),

                    const SizedBox(height: 8),
                    Text(EventReminderText[index]['title']!),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      decoration: BoxDecoration(
                        color: btnBg,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(EventReminderText[index]['label']!),
                    ),                      Text(EventReminderText[index]['time']!),
                    Text(EventReminderText[index]['description']!),

                  ],
                ),
              ),
            ],
          ),
        );
      },
    );

  }
}
