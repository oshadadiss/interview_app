import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:interview_app/ApiClass/model.dart';
import 'package:interview_app/Controllers/weather_card_controller.dart';
import 'package:interview_app/Screens/weather_page.dart';


class WeatherCard extends StatelessWidget {
  final DataModel dataModel;
  WeatherCard({@required this.dataModel});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<weathercardcontroller>(builder: (control){
      return InkWell(
        onTap: (){
          Get.to(WeatherPage(
            sunrise: dataModel.sys.sunrise.toString(),
            sunset: dataModel.sys.sunset.toString(),
          ));
        },
        child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
              color: Colors.orangeAccent,
            ),
            height: 120.0,
            margin: EdgeInsets.symmetric(
              vertical: 5.0,
              horizontal: 5.0,
            ),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            "Wed 30th July",
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.add_location,
                                color: Colors.white,
                              ),
                              Text(
                                dataModel.name,
                                style: TextStyle(
                                  fontSize: 18.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 10.0
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                            children: [
                              Text(
                                dataModel.main.temp.toString() + " 'C",
                                style: TextStyle(
                                  fontSize: 40.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ]
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              dataModel.weather[0].main,
                              style: TextStyle(
                                fontSize: 18.0,
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              dataModel.weather[0].description,
                              style: TextStyle(
                                fontSize: 18.0,
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                              ),),
                          ],
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                          size: 30.0,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
        ),
      );
    });
  }
}

