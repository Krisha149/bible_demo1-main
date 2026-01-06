import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'myevent_controller.dart';

class MyEventView extends GetView<MyEventController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(Icons.arrow_back_ios_new),
          SizedBox(width: MediaQuery.of(context).size.width*0.1,),
           Text("My Events"),
        ],
      )),
      body: Column(
        children: [
          TabBar(
            indicatorColor: Colors.orange,
            controller: controller.tabController,
            labelColor: Colors.orange,
            tabs: const [
              Tab(text: "Joined Events"),
              Tab(text: "My Created Events"),
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: controller.tabController,
              children: [
                _emptyState("No Joined Events"),
                _emptyState("No Created Events"),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _emptyState(String text) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.event_busy, size: 70, color: Colors.grey),
          const SizedBox(height: 10),
          Text(text),
          const SizedBox(height: 6),
          const Text(
            "Events you join will appear here",
            style: TextStyle(color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
