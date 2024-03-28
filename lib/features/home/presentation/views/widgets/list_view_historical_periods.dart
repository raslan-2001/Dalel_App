import 'package:dalel_app/features/home/presentation/views/widgets/historical_periods.dart';
import 'package:flutter/material.dart';

class HistoricalPeriodsListView extends StatelessWidget {
  const HistoricalPeriodsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        clipBehavior: Clip.none,
        padding: EdgeInsets.zero,
        itemCount: 4,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.only(left: 16.0),
            child: HistoricalPeriods(),
          );
        },
      ),
    );
  }
}
