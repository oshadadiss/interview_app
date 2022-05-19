import 'package:get/get.dart';
import 'package:interview_app/Bindings/home_screen_binding.dart';
import 'package:interview_app/Bindings/weather_card_binding.dart';
import 'package:interview_app/Bindings/weather_page_binding.dart';
import 'package:interview_app/Screens/home_screen.dart';
import 'package:interview_app/Screens/weather_page.dart';
import 'package:interview_app/Widgets/weather_card.dart';

class Routs{
  static final String homeScreen ="/homesScreen";
  static final String weatherPage ="/weatherPage";
  static final String weatherCard = "/weatherCard";

  static final routs =[
    GetPage(name: Routs.homeScreen, page: () => HomeScreen(), binding: HomeScreenBinding()),
    GetPage(name: Routs.weatherPage, page: () => WeatherPage(), binding: WeatherPageBinding()),
    GetPage(name: Routs.weatherCard, page: () => WeatherCard(), binding: WeatherCardBinding())
  ];
}