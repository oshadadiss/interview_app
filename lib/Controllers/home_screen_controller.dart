import 'package:get/get.dart';
import 'package:interview_app/ApiClass/api_manager.dart';
import 'package:interview_app/ApiClass/model.dart';

class homecontroller extends GetxController{
  String text = 'Weather App';
  bool isLoading = true;
  List<DataModel> weatherData = [];

  ApiProvider apiProvider = ApiProvider();
  @override
  void onInit() async {
    weatherData.addAll(await apiProvider.getWeather());
    isLoading = false;
    update();
    super.onInit();
  }
}