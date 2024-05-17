import 'package:flutter/material.dart';
import 'package:home_brigadier_admin_panel/app/modules/dashboard/Home/views/circle_profit/circle_Painter.dart';
// import 'package:home_brigadier_admin_panel/app/modules/dashboard/Home/views/Home_view.dart';
// import 'package:home_brigadier_admin_panel/app/modules/dashboard/Home/views/schedule_view.dart';
import 'package:home_brigadier_admin_panel/consts/media_query.dart';

import '../../../../../../theme/app_text_style.dart';
import '../Home_view.dart';

class CircleView extends StatefulWidget {
  const CircleView({super.key});

  @override
  State<CircleView> createState() => _CircleViewState();
}

class _CircleViewState extends State<CircleView> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: SizedBox(
        height: 350,
        width: mediaQueryWidth(context),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Monthly Profit',
                style: TextStyle(fontSize: AppTextStyle.titleMediumFont),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: mediaQueryHeight(context) * 0.3,
                    width: mediaQueryWidth(context) * 0.9,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        SizedBox(
                          height: 220,
                          width: 220,
                          // color: Colors.grey,
                          child: CustomPaint(
                            painter: MyPainterEmptyCircle(),
                          ),
                        ),
                        TweenAnimationBuilder(
                          duration: const Duration(seconds: 4),
                          tween: Tween(begin: 0.0, end: 1.0),
                          curve: Curves.easeOutCubic,
                          builder: (context, value, child) {
                            return CustomPaint(
                              // size: Size.fromRadius(50),
                              painter: OpenPainter(
                                  totalQuestions: 300,
                                  learned: 75,
                                  notLearned: 75,
                                  range: value),
                            );
                          },
                        ),
                        const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '\$5967.00',
                              style: TextStyle(
                                  fontSize: AppTextStyle.titleLargeFont,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Total Profit',
                              style: TextStyle(
                                fontSize: AppTextStyle.titleSmallFont,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('Cleaning'),
                  CircleAvatar(
                    backgroundColor: Colors.green,
                    radius: 5,
                  ),
                  Text('Maintenence'),
                  CircleAvatar(
                    backgroundColor: Colors.blue,
                    radius: 5,
                  ),
                  Text('Other'),
                  CircleAvatar(
                    backgroundColor: Colors.yellow,
                    radius: 5,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
