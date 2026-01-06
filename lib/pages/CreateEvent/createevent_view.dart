import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../widgets/continue.dart';
import '../../widgets/eventcontact.dart';
import '../../widgets/eventdate.dart';
import '../../widgets/eventdescription.dart';
import '../../widgets/eventlocation.dart';
import '../../widgets/eventname.dart';
import '../../widgets/eventupperbar.dart';
import '../../widgets/eventzipcode.dart';
import '../../widgets/imageUpload.dart';
import '../Dialogue/Missinginfo/missinginfo_view.dart';
import '../Dialogue/ReadyToPublish/readytopublish_view.dart';
import 'createevent_controller.dart';


class CreateEventView extends StatefulWidget {
  const CreateEventView({super.key});

  @override
  State<CreateEventView> createState() => _CreateEventViewState();
}


class _CreateEventViewState extends State<CreateEventView> with SingleTickerProviderStateMixin {

  @override
  Widget build(BuildContext context) {

    late CreateEventController createEventController;

    final _formKey = GlobalKey<FormState>();

    final TextEditingController eventNameController = TextEditingController();
    final TextEditingController eventDateController = TextEditingController();
    final TextEditingController eventTimeController = TextEditingController();
    final TextEditingController eventLocationController = TextEditingController();
    final TextEditingController contactInfoController = TextEditingController();
    final TextEditingController descriptionController = TextEditingController();

    int Ename =0;
    int Edate=0;
    int Etime =0;
    int Elocation =0;
    int Econtact =0;
    int Edes =0;

    @override
    void initState() {
      super.initState();
      createEventController = CreateEventController();
    }

    void _submit() {
      if (_formKey.currentState!.validate()) {
        Get.dialog(
          ReadytopublishView(),
          useSafeArea: true,
          barrierDismissible: false,
          barrierColor: Colors.black.withOpacity(0.4),
        );
        // createEventController.redirectToNextScreen();
      }
      else{
        Get.dialog(
            MissinginfoView(),
          useSafeArea: true,
          barrierDismissible: false,
          barrierColor: Colors.black.withOpacity(0.4),
        );
      }
    }

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            automaticallyImplyLeading: false,
            flexibleSpace: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: SafeArea(child: eventUpper()),
            ),
          ),

          SliverToBoxAdapter(
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  Divider(),
                  ImageUploadScreen(),
                  Eventname(controller:eventNameController,counterText : Ename),
                  Eventdate(controller:eventDateController,controller1:eventTimeController,counterText : Edate,counterText1 : Etime),
                  Eventlocation(controller:eventLocationController,counterText : Elocation),
                  Eventzipcode(),
                  Eventcontact(controller:contactInfoController,counterText : Econtact),
                  Eventdescription(controller:descriptionController,counterText : Edes),
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0,right: 30.0,top: 10,bottom: 10),
                    child: ButtonWidget(text: 'Publish Event', onTap: () => _submit(),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
