import 'package:dalel_app/features/home/presentation/views/widgets/sections/app_bar_section.dart';
import 'package:dalel_app/features/home/presentation/views/widgets/sections/historical_characters_section.dart';
import 'package:dalel_app/features/home/presentation/views/widgets/sections/historical_periods_section.dart';
import 'package:dalel_app/features/home/presentation/views/widgets/sections/historical_souvenirs_section.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: AppBarSection()),
          SliverToBoxAdapter(child: HistoricalPeriodsSection()),
          SliverToBoxAdapter(child: HistoricalCharactersSection()),
          SliverToBoxAdapter(child: HistoricalSouvenirsSection()),
        ],
      ),
    );
  }
}

// IconButton(
//   onPressed: () {
//     FirebaseAuth.instance.signOut();
//     GoRouter.of(context).pushReplacement("/loginView");
//   },
//   icon: const Icon(Icons.logout_rounded),
// ),



