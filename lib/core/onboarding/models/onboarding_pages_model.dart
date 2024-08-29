import '../../../constants/assets_path.dart' as images;

class OnBoardingModel {
  final String imagePath;
  final String description;

  OnBoardingModel({
    required this.imagePath,
    required this.description,
  });

  static List<OnBoardingModel> list = [
    OnBoardingModel(
      imagePath: images.onBoardingImageOne,
      description: "Book Your Nearest Hospitals Doctor On Your Time",
    ),
    OnBoardingModel(
      imagePath: images.onBoardingImageTwo,
      description: "Take A Token Of Your Preferred Doctor ",
    ),
    OnBoardingModel(
      imagePath: images.onBoardingImageThree,
      description: "Manage Your Valuable Time",
    ),
  ];
}
