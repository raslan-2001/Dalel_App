import 'package:dalel_app/core/widgets/custom_header_text.dart';
import 'package:dalel_app/features/home/presentation/views/widgets/historical_characters_list_view.dart';
import 'package:flutter/material.dart';

class HistoricalCharactersSection extends StatelessWidget {
  const HistoricalCharactersSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: CustomHeaderText(headerText: "Historical Characters"),
        ),
        SizedBox(height: 16),
        HistoricalCharactersListView(),
        SizedBox(height: 32),
      ],
    );
  }
}
