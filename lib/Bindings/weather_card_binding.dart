import 'package:get/get.dart';
import 'package:interview_app/Controllers/weather_card_controller.dart';
import 'package:interview_app/Controllers/weather_page_controller.dart';

class WeatherCardBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => weathercardcontroller());
  }

}