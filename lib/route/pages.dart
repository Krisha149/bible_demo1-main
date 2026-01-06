import 'package:bible_demo/pages/otp1/otp1_binding.dart';
import 'package:bible_demo/pages/otp2/otp2_binding.dart';
import 'package:bible_demo/pages/otp3/otp3_binding.dart';
import 'package:get/get.dart';
import '../pages/BibleHighlight/biblehighlight_binding.dart';
import '../pages/BibleHighlight/biblehighlight_view.dart';
import '../pages/BibleVersion/bibleversion_binding.dart';
import '../pages/BibleVersion/bibleversion_view.dart';
import '../pages/CreateEvent/createevent_binding.dart';
import '../pages/CreateEvent/createevent_view.dart';
import '../pages/Dialogue/DeleteHighlight/deletehighlight_binding.dart';
import '../pages/Dialogue/DeleteHighlight/deletehighlight_view.dart';
import '../pages/Dialogue/Missinginfo/missinginfo_binding.dart';
import '../pages/Dialogue/Missinginfo/missinginfo_view.dart';
import '../pages/Dialogue/ReadyToPublish/readytopublish_binding.dart';
import '../pages/Dialogue/ReadyToPublish/readytopublish_view.dart';
import '../pages/Dialogue/conattentionDia_binding.dart';
import '../pages/Dialogue/conattentionDia_view.dart';
import '../pages/EventPublish/eventpublish_binding.dart';
import '../pages/EventPublish/eventpublish_view.dart';
import '../pages/Genesis/genesis_binding.dart';
import '../pages/Genesis/genesis_view.dart';
import '../pages/HolyBot/holybot_binding.dart';
import '../pages/HolyBot/holybot_view.dart';
import '../pages/JoinEvent/joinEvent_binding.dart';
import '../pages/JoinEvent/joinEvent_view.dart';
import '../pages/Myevent/myevent_binding.dart';
import '../pages/Myevent/myevent_view.dart';
import '../pages/Notes/notes_binding.dart';
import '../pages/Notes/notes_view.dart';
import '../pages/Philippians/Philippians_binding.dart';
import '../pages/Philippians/Philippians_view.dart';
import '../pages/SelectCh/selectch_binding.dart';
import '../pages/SelectCh/selectch_view.dart';
import '../pages/YouAllSet/your_set_binding.dart';
import '../pages/YouAllSet/your_set_view.dart';
import '../pages/auth/auth_view.dart';
import '../pages/otp1/otp1_view.dart';
import '../pages/otp2/otp2_view.dart';
import '../pages/otp3/otp3_view.dart';
import '../pages/splash/splash_binding.dart';
import '../widgets/bottomnavigationbar.dart';
import 'routes.dart';
import '../pages/splash/splash_view.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: Routes.splash,
      page: () =>  SplashView(),
      binding: SplashBindings(),
    ),
    GetPage(
      name: Routes.holyBot,
      page: () =>  Holybot(),
      binding: HolyBotBindings(),
    ),
    GetPage(
      name: Routes.auth,
      page: () =>  Auth(),
    ),
    GetPage(
      name: Routes.otp1,
      page: () => Otp1View(),
      binding: Otp1Binding(),
    ),
    GetPage(
      name: Routes.otp2,
      page: () =>  Otp2View(),
      binding: Otp2Binding(),
    ),
    GetPage(
      name: Routes.otp3,
      page: () =>  Otp3View(),
      binding: Otp3Binding(),
    ),
    GetPage(
      name: Routes.mainNav,
      page: () =>  MainBottomNav(),
    ),
    GetPage(
      name: Routes.JoinEvent,
      page: () =>  JoinEventView(),
      binding: JoinEventBinding(),
    ),
    GetPage(
      name:Routes.confirm,
      page: () => ConattentionDiaView(),
      binding: ConattentionDiaBinding(),
    ),
    GetPage(
      name: Routes.your_set,
      page: () => YourSetView(),
      binding: YourSetBinding(),
    ),
    GetPage(
      name: Routes.myevent,
      page: () => MyEventView(),
      binding: MyEventBinding(),
    ),
    GetPage(
      name:Routes.creEvent,
      page: () => CreateEventView(),
      binding: CreateEventBinding(),
    ),
    GetPage(
      name:Routes.missInfo,
      page: () => MissinginfoView(),
      binding: MissinginfoBinding(),
    ),
    GetPage(
      name:Routes.readyPublish,
      page: () => ReadytopublishView(),
      binding: ReadytopublishBinding(),
    ),
    GetPage(
      name:Routes.eventPublish,
      page: () => EventpublishView(),
      binding: EventpublishBinding(),
    ),
    GetPage(
      name:Routes.bibleHigh,
      page: () => BibleHighlightView(),
      binding: BibleHighlightBinding(),
    ),
    GetPage(
      name:Routes.delHigh,
      page: () => DeleteHighlightView(),
      binding: DeleteHighlightBinding(),
    ),
    GetPage(
      name:Routes.selectCh,
      page: () => SelectChView(),
      binding: SelectChBinding(),
    ),
    GetPage(
      name:Routes.genesis,
      page: () => GenesisView(),
      binding: GenesisBinding(),
    ),
    GetPage(
      name:Routes.Philippians,
      page: () => PhilippiansView(),
      binding: PhilippiansBinding(),
    ),
    GetPage(
      name:Routes.Bibleversion,
      page: () => BibleVersionView(),
      binding: BibleVersionBinding(),
    ),
    GetPage(
      name:Routes.Notes,
      page: () => NotesView(),
      binding: NotesBinding(),
    ),
  ];
}
