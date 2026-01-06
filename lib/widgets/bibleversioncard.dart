import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import '../model/highlightcard_model.dart';
import '../pages/Dialogue/DeleteHighlight/deletehighlight_view.dart';

class BibleVersionCard extends StatelessWidget {
  const BibleVersionCard({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Column(
          children: List.generate(5, (index) {
            return SizedBox(
              height: constraints.maxHeight * 0.4,
              width: double.infinity,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Row(
                  children: [
                    Image.asset("assets/Bible/Container.png"),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Text("Bible Scripture"),
                        Text("Holy Bible - NIV"),
                      ],
                    ),
                  ],
                ),
              ),
            );
          }),
        );
      },
    );
  }
}
