import 'package:flutter/material.dart';

import '../../model/communitychat_model.dart';
import '../../widgets/communitychat.dart';

class CommunityView extends StatefulWidget {
  const CommunityView({super.key});

  @override
  State<CommunityView> createState() => CommunityViewState();
}

class CommunityViewState extends State<CommunityView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [

            /// Search Bar
            Padding(
              padding: const EdgeInsets.all(12),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search',
                  prefixIcon: const Icon(Icons.search),
                  filled: true,
                  fillColor: Colors.grey.shade200,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),

            /// ListView
            Expanded(
              child: ListView.builder(
                itemCount: communityList.length,
                itemBuilder: (context, index) {
                  return CommunityChatWidget(
                    data: communityList[index],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
