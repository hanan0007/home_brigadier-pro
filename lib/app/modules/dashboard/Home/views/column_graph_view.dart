import 'package:flutter/material.dart';
import 'package:flutter_echarts/flutter_echarts.dart';

import '../../../../../consts/media_query.dart';
import '../../../../../theme/app_text_style.dart';

class ColumnGraphView extends StatefulWidget {
  const ColumnGraphView({super.key});

  @override
  State<ColumnGraphView> createState() => _ColumnGraphViewState();
}

class _ColumnGraphViewState extends State<ColumnGraphView> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: SizedBox(
        height: mediaQueryHeight(context) * 0.42,
        width: mediaQueryWidth(context),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Weekly Booking',
                    style: TextStyle(fontSize: AppTextStyle.titleSmallFont),
                  ),
                  PopupMenuButton<String>(
                    icon: const Icon(
                      Icons.more_horiz,
                      color: Colors.black,
                    ),
                    tooltip: "view mode",
                    offset: const Offset(double.maxFinite, kToolbarHeight),
                    itemBuilder: (BuildContext context) {
                      return <PopupMenuEntry<String>>[
                        const PopupMenuItem<String>(
                          value: 'Today',
                          child: Text('Today'),
                        ),
                        const PopupMenuItem<String>(
                          value: 'Tomorow',
                          child: Text('Tomorow'),
                        ),
                        const PopupMenuItem<String>(
                          value: 'Yesterday',
                          child: Text('Yesterday'),
                        ),
                      ];
                    },
                    onSelected: (String value) {},
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: mediaQueryWidth(context) * 0.85,
                    height: mediaQueryHeight(context) * 0.3,
                    child: Echarts(
                      option: '''
      {
        xAxis: {
          type: 'category',
          data: ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun']
        },
        yAxis: [
                    { 
                      type: 'value',
                      min: 0,
                      max: 70
                    },
                    { 
                      type: 'value',
                      min: 0,
                      max: 70
                    }
                  ],
      
          series: [
                    {
                      data: [10, 5, 60, 20, 30, 10, 0],
                      type: 'bar',
                      yAxisIndex: 0,
                      itemStyle: { color: 'brown' }
                    },
                    {
                      data: [20, 50, 30, 30, 20, 40, 0],
                      type: 'bar',
                      yAxisIndex: 1,
                      itemStyle: { color: 'blue' }
                    }
                  ]
      }
        ''',
                    ),
                  )
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('Cleaning'),
                  CircleAvatar(
                    backgroundColor: Colors.brown,
                    radius: 5,
                  ),
                  Text('Maintenence'),
                  CircleAvatar(
                    backgroundColor: Colors.blue,
                    radius: 5,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
