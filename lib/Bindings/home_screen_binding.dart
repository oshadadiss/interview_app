import 'package:get/get.dart';
import 'package:interview_app/Controllers/home_screen_controller.dart';

class HomeScreenBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => homecontroller());
  }

}