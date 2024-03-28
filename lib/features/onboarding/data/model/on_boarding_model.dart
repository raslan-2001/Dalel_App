import 'package:dalel_app/core/utils/app_assets.dart';

class OnBoardingModel {
  final String image;
  final String title;
  final String subTitle;

  OnBoardingModel(
      {required this.image, required this.title, required this.subTitle});
}

List<OnBoardingModel> onBoardingData = [
  OnBoardingModel(
      image: Assets.assetsImagesPana,
      title: "Explore The history with Dalel in a smart way",
      subTitle:
          'Using our app’s history libraries you can find many historical periods'),
  OnBoardingModel(
      image: Assets.assetsImagesPana2,
      title: "From every place on earth",
      subTitle: 'A big variety of ancient places from all over the world'),
  OnBoardingModel(
      image: Assets.assetsImagesPana3,
      title: "Using modern AI technology for better user experience",
      subTitle:
          'AI provide recommendations and helps you to continue the search journey'),
];
