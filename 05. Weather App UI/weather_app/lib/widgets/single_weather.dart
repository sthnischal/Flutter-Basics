import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather_app/models/weather_locations.dart';

class SingleWeather extends StatelessWidget {
  final int index;
  SingleWeather(this.index);
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              //this widget help to locate our text in between the overall screen
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //top column area
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 150,
                      ),
                      Text(
                        locationList[index].city,
                        style: GoogleFonts.lato(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Text(
                        locationList[index].dateTime,
                        style: GoogleFonts.lato(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        locationList[index]
                            .temparature, //unicode value for degree celcius
                        style: GoogleFonts.lato(
                            fontSize: 85,
                            fontWeight: FontWeight.w300,
                            color: Colors.white),
                      ),
                      Row(
                        children: [
                          SvgPicture.asset(
                            locationList[index].iconUrl,
                            width: 30,
                            height: 30,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            locationList[index].weatherType,
                            style: GoogleFonts.lato(
                                fontSize: 22,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 40),
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.white30)),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        'Wind',
                        style: GoogleFonts.lato(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Text(
                        locationList[index].wind.toString(),
                        style: GoogleFonts.lato(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Text(
                        'Km/hr',
                        style: GoogleFonts.lato(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Stack(
                        children: [
                          Container(
                            height: 5,
                            width: 50,
                            color: Colors.grey,
                          ),
                          Container(
                            height: 5,
                            width: 10,
                            color: Colors.greenAccent,
                          )
                        ],
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        'Rain',
                        style: GoogleFonts.lato(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Text(
                        locationList[index].rain.toString(),
                        style: GoogleFonts.lato(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Text(
                        '%',
                        style: GoogleFonts.lato(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Stack(
                        children: [
                          Container(
                            height: 5,
                            width: 50,
                            color: Colors.grey,
                          ),
                          Container(
                            height: 5,
                            width: 2,
                            color: Colors.redAccent,
                          )
                        ],
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        'Humidity',
                        style: GoogleFonts.lato(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Text(
                        locationList[index].humidity.toString(),
                        style: GoogleFonts.lato(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Text(
                        '%',
                        style: GoogleFonts.lato(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Stack(
                        children: [
                          Container(
                            height: 5,
                            width: 50,
                            color: Colors.grey,
                          ),
                          Container(
                            height: 5,
                            width: 10,
                            color: Colors.redAccent,
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ));
  }
}
