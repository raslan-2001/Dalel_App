import 'package:dalel_app/core/widgets/custom_header_text.dart';
import 'package:dalel_app/features/home/presentation/views/widgets/list_view_historical_periods.dart';
import 'package:flutter/material.dart';

class HistoricalPeriodsSection extends StatelessWidget {
  const HistoricalPeriodsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: CustomHeaderText(headerText: "Historical periods"),
        ),
        SizedBox(height: 16),
        HistoricalPeriodsListView(),
        SizedBox(height: 32),
      ],
    );
  }
}
