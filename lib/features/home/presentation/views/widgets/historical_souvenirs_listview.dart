import 'package:dalel_app/features/home/presentation/views/widgets/historical_souvenirs.dart';
import 'package:flutter/material.dart';

class HistoricalSouvenirsListView extends StatelessWidget {
  const HistoricalSouvenirsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 141,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.zero,
        clipBehavior: Clip.none,
        itemCount: 10,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.only(left: 16.0),
            child: HistoricalSouvenirs(),
          );
        },
      ),
    );
  }
}
