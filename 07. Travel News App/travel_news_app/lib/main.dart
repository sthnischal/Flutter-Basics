import 'package:flutter/material.dart';

import 'app_styles.dart';
import 'size_config.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: kLighterWhite,
        body: HomeScreen(),
      ),
    );
  }
}

//use shortcut commad for creeating stateful and stateless widget is stl
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
        //this safeare is used for top section of phone to not cut in different model
        child: ListView(
      padding: EdgeInsets.symmetric(horizontal: 30),
      children: [
        Row(
          children: [
            Container(
              height: 51,
              width: 51,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: kLightBlue,
                  image: const DecorationImage(
                      image: NetworkImage(
                          'https://cdn.iconscout.com/icon/free/png-512/avatar-380-456332.png'))),
            ),
            SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Welcome Back!',
                  style: kPoppinsBold.copyWith(
                    fontSize: SizeConfig.blockSizeHorizontal! * 4,
                  ),
                ),
                Text(
                  'Friday, 04 Auguest',
                  style: kPoppinsRegular.copyWith(
                    color: kGrey,
                    fontSize: SizeConfig.blockSizeHorizontal! * 3,
                  ),
                )
              ],
            )
          ],
        )
      ],
    ));
  }
}
