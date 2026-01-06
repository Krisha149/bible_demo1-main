import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../resource/colors.dart';
import '../../route/routes.dart';
import '../../widgets/card.dart';
import '../../widgets/continue.dart';
import '../Dialogue/conattentionDia_view.dart';
import 'joinEvent_controller.dart';

class JoinEventView extends GetView<JoineventController> {
  const JoinEventView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset(
                "assets/Event/ImageWithFallback.png",
                height: MediaQuery.of(context).size.height * 0.3,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Positioned(
                top: 40,
                left: 20,
                right: 20,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    CircleAvatar(
                      backgroundColor: Color(0xFFFFF7ED),
                      child: Icon(Icons.arrow_back, color: Colors.black),
                    ),
                    CircleAvatar(
                      backgroundColor: Color(0xFFFFF7ED),
                      child: Icon(Icons.share, color: Colors.black),
                    ),
                  ],
                ),
              ),

              Positioned(
                bottom: 20,
                left: 20,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  decoration: BoxDecoration(
                    color: btnBg,
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: const Text("Bible Study"),
                ),
              ),
            ],
          ),

          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  const Text(
                    "Wednesday Night Bible Study",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 4),
                  const Text("Hosted by Grace Community Church"),

                  const SizedBox(height: 16),

                  const CardWidget(),

                  const SizedBox(height: 20),

                  _infoContainer(
                    title: "About This Event",
                    desc:
                    "Join us for an in-depth study of the Book of Romans. "
                        "All are welcome, from beginners to long-time believers.\n\n"
                        "We provide all materials needed, and refreshments will be served.",
                  ),

                  const SizedBox(height: 16),

                  _infoContainer(
                    title: "What to Bring",
                    desc:
                    "• Your Bible (physical or digital)\n"
                        "• Notebook for taking notes\n"
                        "• An open heart and willingness to share",
                    bg: const Color(0xFFFFEDD4),
                  ),

                  const SizedBox(height: 30),

                  ButtonWidget(text: 'Join Event', onTap: () =>  Get.dialog(
                    ConattentionDiaView(),
                    useSafeArea: true,
                    barrierDismissible: false,
                    barrierColor: Colors.black.withOpacity(0.4),
                  )),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _infoContainer({
    required String title,
    required String desc,
    Color bg = Colors.white,
  }) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsetsDirectional.all(14),
      decoration: BoxDecoration(
        color: bg,
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: const TextStyle(fontWeight: FontWeight.w600)),
          const SizedBox(height: 8),
          Text(desc),
        ],
      ),
    );
  }
}
