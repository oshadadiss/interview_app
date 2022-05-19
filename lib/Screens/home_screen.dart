import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:interview_app/ApiClass/model.dart';
import 'package:interview_app/Controllers/home_screen_controller.dart';
import 'package:interview_app/Widgets/weather_card.dart';
import 'package:interview_app/routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<homecontroller>(builder: (control){
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: Text(control.text),
        ),
        body: Column(
          children: [
            Expanded(
                child: control.isLoading ? CircularProgressIndicator() :
                ListView.builder(
                    itemCount: control.weatherData.length,
                    itemBuilder: (context, index){
                      DataModel dataModel = control.weatherData[index];
                      return WeatherCard(dataModel: dataModel,);
      }))
          ]
        ),
      );
    });
  }
}
