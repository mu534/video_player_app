import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:minimal_chatapp/folder/video_info.dart';

import 'package:minimal_chatapp/themes/light_mode.dart' as color;
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List info = [];
  _initData() {
    DefaultAssetBundle.of(context).loadString("json/info.json").then((value) {
      setState(() {
        info = json.decode(value);
      });
    });
  }

  @override
  void initState() {
    super.initState();
    _initData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color.AppColor.homePageBackground,
      body: Container(
        padding: const EdgeInsets.only(top: 70, left: 30, right: 30),
        child: Column(
          children: [
            // Top Row: Title & Icons
            Row(
              children: [
                Text(
                  "Training",
                  style: TextStyle(
                    color: color.AppColor.homePageTitle,
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const Spacer(),
                Icon(
                  Icons.arrow_back_ios,
                  size: 20,
                  color: color.AppColor.homePageIcons,
                ),
                const SizedBox(width: 15),
                Icon(
                  Icons.calendar_today_outlined,
                  size: 20,
                  color: color.AppColor.homePageIcons,
                ),
                const SizedBox(width: 15),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 20,
                  color: color.AppColor.homePageIcons,
                ),
              ],
            ),

            const SizedBox(height: 30),

            // Subtitle Row
            Row(
              children: [
                Text(
                  "Training",
                  style: TextStyle(
                    color: color.AppColor.homePageSubtitle,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const Spacer(),
                Text(
                  "Details",
                  style: TextStyle(
                    color: color.AppColor.homePageDetail,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(width: 5),
                InkWell(
                  onTap: () {
                    Get.to(() => VideoInfo());
                  },
                  child: Icon(
                    Icons.arrow_forward_ios_sharp,
                    size: 20,
                    color: color.AppColor.homePageIcons,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 10),

            // Gradient Container
            Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    color.AppColor.gradientFirst.withOpacity(0.8),
                    color.AppColor.gradientSecond.withOpacity(0.9),
                  ],
                  begin: Alignment.bottomLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                  topRight: Radius.circular(88),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(5, 10),
                    blurRadius: 10,
                    color: color.AppColor.gradientSecond.withOpacity(0.2),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20, top: 25, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Next workout',
                      style: TextStyle(
                        color: color.AppColor.homePageContainerTextSmall,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      'Legs Toning',
                      style: TextStyle(
                        color: color.AppColor.homePageContainerTextSmall,
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      'and Glutes Workout',
                      style: TextStyle(
                        color: color.AppColor.homePageContainerTextSmall,
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.timer,
                              size: 20,
                              color: color.AppColor.homePageContainerTextSmall,
                            ),
                            const SizedBox(width: 10),
                            Text(
                              '30 min',
                              style: TextStyle(
                                color:
                                    color.AppColor.homePageContainerTextSmall,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                        const Spacer(),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(60),
                            boxShadow: [
                              BoxShadow(
                                offset: const Offset(4, 8),
                                blurRadius: 10,
                                color: color.AppColor.gradientFirst.withOpacity(
                                  0.2,
                                ),
                              ),
                            ],
                          ),
                          child: Icon(
                            Icons.play_circle_fill,
                            size: 60,
                            color: color.AppColor.homePageContainerTextSmall,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 30),

            // Image Container
            SizedBox(
              height: 180,
              width: MediaQuery.of(context).size.width,
              child: Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: const DecorationImage(
                        image: AssetImage('assets/car.png'),
                        fit: BoxFit.cover,
                      ),
                      boxShadow: [
                        BoxShadow(
                          offset: const Offset(8, 10),
                          blurRadius: 40,
                          color: color.AppColor.gradientSecond.withValues(
                            blue: 4.5,
                          ),
                        ),
                        BoxShadow(
                          offset: const Offset(-1, -5),
                          blurRadius: 10,
                          color: color.AppColor.gradientSecond.withValues(
                            blue: 0.5,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 200,
                    width: 350,
                    margin: const EdgeInsets.only(
                      right: 200,
                      bottom: 70,
                      top: 10,
                    ),

                    decoration: BoxDecoration(
                      // color: Colors.redAccent.withValues(blue: 0.5),
                      borderRadius: BorderRadius.circular(20),
                      image: const DecorationImage(
                        image: AssetImage('assets/music.png'),
                        // fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    width: double.maxFinite,
                    height: 100,
                    // color: Colors.redAccent.withValues(blue: .5),
                    margin: const EdgeInsets.only(
                      left: 110,

                      bottom: 10,
                      top: 10,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'you are doing great',
                          style: TextStyle(
                            color: color.AppColor.homePageDetail,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        RichText(
                          text: TextSpan(
                            text: 'Keep it up\n',
                            style: TextStyle(
                              color: color.AppColor.homePagePlanColor,
                              fontSize: 16,
                            ),
                            children: [TextSpan(text: ' Stick your plan')],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Areas of Focus',
                  style: TextStyle(
                    color: color.AppColor.homePageTitle,
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            Expanded(
              child: OverflowBox(
                maxWidth: MediaQuery.of(context).size.width,
                child: MediaQuery.removePadding(
                  removeTop: true,
                  context: context,
                  child: ListView.builder(
                    itemCount: (info.length.toDouble() / 2).toInt(),
                    itemBuilder: (_, i) {
                      int a = 2 * i; //0, 2,
                      int b = 2 * i + 1; //1,3
                      return Row(
                        children: [
                          Container(
                            width: (MediaQuery.of(context).size.width - 90) / 2,
                            height: 170,
                            margin: EdgeInsets.only(
                              left: 30,
                              bottom: 15,
                              top: 15,
                            ),
                            padding: const EdgeInsets.only(bottom: 10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                image: AssetImage(info[a]['img']),
                              ),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 3,
                                  offset: Offset(5, 5),
                                  color: color.AppColor.gradientSecond
                                      .withValues(blue: 0.1),
                                ),
                                BoxShadow(
                                  blurRadius: 3,
                                  offset: Offset(-5, -5),
                                  color: color.AppColor.gradientSecond
                                      .withValues(blue: 0.1),
                                ),
                              ],
                            ),
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Text(
                                info[a]['title'],
                                style: TextStyle(
                                  color: color.AppColor.homePageDetail,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: (MediaQuery.of(context).size.width - 90) / 2,
                            height: 170,
                            margin: EdgeInsets.only(
                              left: 30,
                              bottom: 15,
                              top: 15,
                            ),
                            padding: const EdgeInsets.only(bottom: 5),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                image: AssetImage(info[b]['img']),
                              ),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 3,
                                  offset: Offset(5, 5),
                                  color: color.AppColor.gradientSecond
                                      .withValues(blue: 0.1),
                                ),
                                BoxShadow(
                                  blurRadius: 3,
                                  offset: Offset(-5, -5),
                                  color: color.AppColor.gradientSecond
                                      .withValues(blue: 0.1),
                                ),
                              ],
                            ),
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Text(
                                info[b]['title'],
                                style: TextStyle(
                                  color: color.AppColor.homePageDetail,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
