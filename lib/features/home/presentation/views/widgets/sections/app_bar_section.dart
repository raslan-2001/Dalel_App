import 'package:dalel_app/core/widgets/custom_app_bar.dart';
import 'package:flutter/widgets.dart';

class AppBarSection extends StatelessWidget {
  const AppBarSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(height: 28),
        CustomAppBar(),
        SizedBox(height: 32),
      ],
    );
  }
}
