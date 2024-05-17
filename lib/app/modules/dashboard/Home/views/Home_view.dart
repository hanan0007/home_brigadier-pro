
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:home_brigadier_admin_panel/app/modules/dashboard/Home/views/circle_profit/circle_view.dart';
import 'package:home_brigadier_admin_panel/app/modules/dashboard/Home/views/column_graph_view.dart';
import 'package:home_brigadier_admin_panel/app/modules/dashboard/Home/views/line_graph/line_graph_view.dart';
import 'package:home_brigadier_admin_panel/consts/media_query.dart';
import 'package:home_brigadier_admin_panel/theme/app_text_style.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    final List<String> texts = [
      'Today booking\n Hour ',
      'Customer',
      'Cash in Hand',
      'Gross Profit',
    ];
    final List<String> dollars = [
      '2489k',
      '379k',
      '3479k',
      '2,454k',
    ];
    List<IconData> icons = [
      Icons.book_online,
      Icons.accessibility,
      Icons.access_time,
      Icons.access_time,
    ];
    return GetBuilder(
      init: HomeController(),
      builder: (_) {
        return Scaffold(
            body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: Column(
              children: [
                SizedBox(
                  height: mediaQueryHeight(context) * 0.01,
                ),
                Card(
                  color: Colors.white,
                  child: SizedBox(
                    height: 100,
                    width: mediaQueryWidth(context),
                    // color: Colors.amber,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Todays Booking Hours',
                                style: TextStyle(
                                  fontSize: AppTextStyle.titleSmallFont,
                                ),
                              ),
                              Text(
                                '5000\$',
                                style: TextStyle(
                                    fontSize: AppTextStyle.titleLargeFont,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 5),
                          child: CircleAvatar(
                            radius: mediaQueryWidth(context) * 0.08,
                            backgroundColor:
                                const Color.fromARGB(255, 190, 213, 255),
                            child: const Center(
                                child: Icon(
                              Icons.book_online_outlined,
                              color: Colors.blue,
                            )),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: mediaQueryHeight(context) * 0.01,
                ),
                Card(
                  color: Colors.white,
                  child: SizedBox(
                    height: 100,
                    width: mediaQueryWidth(context),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Todays Booking Amount',
                                style: TextStyle(
                                  fontSize: AppTextStyle.titleSmallFont,
                                ),
                              ),
                              Text(
                                '250\$',
                                style: TextStyle(
                                    fontSize: AppTextStyle.titleLargeFont,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 5),
                          child: CircleAvatar(
                            radius: mediaQueryWidth(context) * 0.08,
                            backgroundColor:
                                const Color.fromARGB(255, 243, 211, 235),
                            child: const Center(
                                child: Icon(
                              Icons.settings,
                              color: Colors.pink,
                            )),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: mediaQueryHeight(context) * 0.01,
                ),
                Card(
                  color: Colors.white,
                  child: SizedBox(
                    height: 100,
                    width: mediaQueryWidth(context),
                    // color: Colors.amber,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Clients',
                                style: TextStyle(
                                  fontSize: AppTextStyle.titleSmallFont,
                                ),
                              ),
                              Text(
                                '0\$',
                                style: TextStyle(
                                    fontSize: AppTextStyle.titleLargeFont,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 5),
                          child: CircleAvatar(
                            radius: mediaQueryWidth(context) * 0.08,
                            backgroundColor:
                                const Color.fromARGB(255, 248, 248, 223),
                            child: const Center(
                                child: Icon(
                              Icons.people_alt,
                              color: Colors.amber,
                            )),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const CircleView(),
                const ColumnGraphView(),
                const LineGraphView()
              ],
            ),
          ),
        ));
      },
    );
  }
}

class MyPainterEmptyCircle extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    double centerX = size.width / 2;
    double centerY = size.height / 2;
    double radius = size.width / 2 - 10; // Adjust the thickness of the ring

    Paint paint = Paint()
      ..color = Colors.grey.withOpacity(0.5)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 20.0;

    canvas.drawCircle(Offset(centerX, centerY), radius, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
