import '../models/onboading_model.dart';

class OnbardingData {
  static final List<OnboardingScreenModel> onboardingData = [
    OnboardingScreenModel(
      title: "Welcome to Bee World",
      imgPath: "assets/images/onboard_1.png",
      description: "Discover the power of tracking and caring for your bees",
    ),
    OnboardingScreenModel(
      title: "Easily Manage Your Beehives",
      imgPath: "assets/images/onboard_2.png",
      description: "Keep your hives healthy and organized with simple tools",
    ),
    OnboardingScreenModel(
      title: "Harvest Honey Like a Pro",
      imgPath: "assets/images/onboard_3.png",
      description: "Monitor production and collect honey efficiently",
    ),
  ];
}
