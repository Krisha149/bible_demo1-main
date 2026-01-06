import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../widgets/smallbutton.dart';
import '../../../widgets/verysmallbtn.dart';
import 'deletehighlight_controller.dart';


class DeleteHighlightView extends GetView<DeleteHighlightController> {
  const DeleteHighlightView({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: SizedBox(
          height: MediaQuery.of(context).size.height*0.3,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 Row(
                   children: [
                     Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white
                        ),
                        child: Center(child: Icon(Icons.delete,color: Colors.red,)),
                      ),
                     SizedBox(width: MediaQuery.of(context).size.width*0.02,),
                     Text("Delete Highlight"),
                   ],
                 ),
                  Icon(Icons.close)
                ],
              ),
              Divider(),
              Text("Are you sure you want to delete this highlight?"),
              Container(
                height: 40,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Center(child: Text("Romans 3:23")),
              ),
              Text("This action cannot be undone."),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  VerySmallBtn(text: 'Cancel', onTap: () { Get.back(); },),
                  VerySmallBtn(text: 'Delete', onTap: () {  },),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }

}
