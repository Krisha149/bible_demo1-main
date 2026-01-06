import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import '../../widgets/notescard.dart';
import 'notes_controller.dart';

class NotesView extends GetView<NotesController> {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            automaticallyImplyLeading: false,
            flexibleSpace: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: SafeArea(child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.arrow_back_ios_new),
                    SizedBox(width: MediaQuery.of(context).size.width*0.2,),
                    Text("Notes"),
                  ])),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("4 Notes"),
                  const SizedBox(height: 10),
                ],
              ),
            ),
          ),

          const SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            sliver: NotesCard(),
          ),
        ],
      ),
    );
  }
}

