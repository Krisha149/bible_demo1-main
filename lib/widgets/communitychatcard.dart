import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import '../model/highlightcard_model.dart';
import '../pages/Dialogue/DeleteHighlight/deletehighlight_view.dart';

class CommunityChatCard extends StatelessWidget {
  const CommunityChatCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(highLightCardText.length, (index) {
        final item = highLightCardText[index];
        return Container(
          margin: const EdgeInsets.only(bottom: 20),
          padding: const EdgeInsets.all(15),
          width: MediaQuery.of(context).size.width * 0.89,
          height: MediaQuery.of(context).size.height*0.15,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Stack(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  VerticalDivider(
                    color: Color(0xFFF9A13D),
                    thickness: 2,
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width*0.06,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(item['title'],style: TextStyle(color:Color(0xFFF9A13D),),),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.01,
                      ),
                      Expanded(
                        child: Container(
                          height: MediaQuery.of(context).size.height*0.07,
                          width: MediaQuery.of(context).size.width *0.7,

                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xFFF9A13D),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(9.0),
                            child: Text(item['des']),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Positioned(
                top: 10,
                right: 20,
                child: GestureDetector(
                  onTap: ()=>Get.dialog(
                    DeleteHighlightView(),
                    useSafeArea: true,
                    barrierDismissible: false,
                    barrierColor: Colors.black.withOpacity(0.4),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white
                    ),
                    child: Center(child: Icon(Icons.delete,color: Colors.red,)),
                  ),
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
