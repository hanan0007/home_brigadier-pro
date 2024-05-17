
import 'package:flutter/material.dart';
import 'package:flutter_echarts/flutter_echarts.dart';
import 'package:home_brigadier_admin_panel/app/modules/dashboard/Home/views/line_graph/cashback_detail.dart';
import 'package:home_brigadier_admin_panel/app/modules/dashboard/Home/views/line_graph/expense_detail.dart';
import 'package:home_brigadier_admin_panel/app/modules/dashboard/Home/views/line_graph/income_detail.dart';
import 'package:home_brigadier_admin_panel/theme/app_text_style.dart';

import '../../../../../../consts/media_query.dart';

class LineGraphView extends StatefulWidget {
  const LineGraphView({super.key});

  @override
  State<LineGraphView> createState() => _LineGraphViewState();
}

class _LineGraphViewState extends State<LineGraphView> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: SizedBox(
        height: mediaQueryHeight(context) * 0.7,
        width: mediaQueryWidth(context),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Order Overview',
                style: TextStyle(fontSize: AppTextStyle.titleSmallFont),
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
          data: [20, 10, 40, 20, 70, 20, 10],
          type: 'line',
          itemStyle: { color: 'red' }
        },
        {
          data: [25, 35, 50, 30, 50, 40, 20],
          type: 'line',
          itemStyle: { color: 'blue' }
        },
        {
          data: [40, 60, 55, 60, 30, 20, 40],
          type: 'line',
          itemStyle: { color: 'green' }
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
                  Text('Earning'),
                  CircleAvatar(
                    backgroundColor: Colors.blue,
                    radius: 5,
                  ),
                  Text('Orders'),
                  CircleAvatar(
                    backgroundColor: Colors.green,
                    radius: 5,
                  ),
                  Text('Refunds'),
                  CircleAvatar(
                    backgroundColor: Colors.pink,
                    radius: 5,
                  ),
                ],
              ),
              const IncomeDetail(),
              const ExpenseDetail(),
              const CashBachDetail()
            ],
          ),
        ),
      ),
    );
  }
}
