import 'package:flutter/material.dart';

import '../../../../../../consts/media_query.dart';

class ExpenseDetail extends StatefulWidget {
  const ExpenseDetail({super.key});

  @override
  State<ExpenseDetail> createState() => _ExpenseDetailState();
}

class _ExpenseDetailState extends State<ExpenseDetail> {
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
                  Icons.handshake_outlined,
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
                            "Expense",
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
                            "\$12,336",
                            style: TextStyle(fontWeight: FontWeight.w900),
                          ),
                          Text(
                            "- \$140",
                            style: TextStyle(
                                fontWeight: FontWeight.w900, color: Colors.red),
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
