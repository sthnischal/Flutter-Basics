import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class WeatherApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true, //make complete app from whole screen
        appBar: AppBar(
          backgroundColor: Colors.transparent, //make appbar same as top section
          ///for android appbar have some shadow which can be removed by elevation make to 0
          elevation: 0,
          title: Text('Weather App'),
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
                  padding: EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        //this widget help to locate our text in between the overall screen
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            //top column area
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 120,
                                ),
                                Text(
                                  'Kathmandu',
                                  style: GoogleFonts.lato(
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                Text(
                                  'Hello',
                                  style: GoogleFonts.lato(
                                      fontSize: 22, color: Colors.white),
                                )
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Kathmandu1',
                                  style: GoogleFonts.lato(
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                Text(
                                  'Hello1',
                                  style: GoogleFonts.lato(
                                      fontSize: 22, color: Colors.white),
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
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.white30)),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'Hello2',
                            style: GoogleFonts.lato(
                                fontSize: 35,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Text(
                            'Hello3',
                            style: GoogleFonts.lato(
                                fontSize: 35,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          )
                        ],
                      )
                    ],
                  ))
            ],
          ),
        ));
  }
}
