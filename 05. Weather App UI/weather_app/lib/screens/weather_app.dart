import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/single_weather.dart';
import '../models/weather_locations.dart';

class WeatherApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true, //make complete app from whole screen
        appBar: AppBar(
          backgroundColor: Colors.transparent, //make appbar same as top section
          ///for android appbar have some shadow which can be removed by elevation make to 0
          elevation: 0,
          //title: Text('Weather App'),
          leading: IconButton(
            icon: Icon(Icons.search),
            iconSize: 30,
            color: Colors.white,
            onPressed: () {},
          ),
          actions: [
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
              child: GestureDetector(
                onTap: () => print('Menu Clicked'),
                child: SvgPicture.asset(
                  'assets/menu.svg',
                  height: 30,
                  width: 30,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
        body: Container(
          child: Stack(
            children: [
              Image.asset(
                'assets/night.jpg',
                fit: BoxFit.cover,
                height: double.infinity, //fully covering image into screen
                width: double.infinity,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.black38), //make image little bit transparent
              ),
              Container(
                margin: EdgeInsets.only(
                  top: 140,
                  left: 15,
                ),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      width: 12,
                      height: 5,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      width: 5,
                      height: 5,
                      decoration: BoxDecoration(
                          color: Colors.white54,
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      width: 5,
                      height: 5,
                      decoration: BoxDecoration(
                          color: Colors.white54,
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      width: 5,
                      height: 5,
                      decoration: BoxDecoration(
                          color: Colors.white54,
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                    )
                  ],
                ),
              ),
              // for single page
              //SingleWeather()

              //for multile scrollable page use pageview
              PageView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: locationList.length,
                  itemBuilder: (context, i) => SingleWeather(i))
            ],
          ),
        ));
  }
}
