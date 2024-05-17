import 'package:flutter/material.dart';

import '../../../../../../consts/media_query.dart';

class IncomeDetail extends StatefulWidget {
  const IncomeDetail({super.key});

  @override
  State<IncomeDetail> createState() => _IncomeDetailState();
}

class _IncomeDetailState extends State<IncomeDetail> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: mediaQueryHeight(context) * 0.09,
      width: mediaQueryWidth(context),
      decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.1),
          borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 5,
        ),
        child: Row(
          children: [
            const Card(
              color: Colors.white,
              child: SizedBox(
                height: 40,
                width: 40,
                // color: Colors.white,
                child: Icon(
                  Icons.download_outlined,
                  color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: SizedBox(
                // color: Colors.red,
                width: mediaQueryWidth(context) * 0.75,
                child: const Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        // mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            "Income",
                          ),
                          Icon(
                            Icons.more_horiz,
                            color: Colors.black,
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            "\$42,0000",
                            style: TextStyle(fontWeight: FontWeight.w900),
                          ),
                          Text(
                            "+ \$235",
                            style: TextStyle(
                                fontWeight: FontWeight.w900,
                                color: Colors.green),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
