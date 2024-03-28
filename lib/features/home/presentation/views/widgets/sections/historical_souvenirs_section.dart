import 'package:dalel_app/core/widgets/custom_header_text.dart';
import 'package:dalel_app/features/home/presentation/views/widgets/historical_souvenirs_listview.dart';
import 'package:flutter/material.dart';

class HistoricalSouvenirsSection extends StatelessWidget {
  const HistoricalSouvenirsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: CustomHeaderText(headerText: "Historical Souvenirs"),
        ),
        SizedBox(height: 16),
        HistoricalSouvenirsListView(),
      ],
    );
  }
}
