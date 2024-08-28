class OnBoardingModel {
  final String imagePath;
  final String title;
  final String description;

  OnBoardingModel({
    required this.imagePath,
    required this.title,
    required this.description,
  });

  static List<OnBoardingModel> list = [
    OnBoardingModel(
      imagePath: 'assets/images/splash.gif',
      title: "النافذة القومية للتجارة\nالمصرية عبر الحدود",
      description:
          "نقطـة دخـول وحيـدة  تسـمح  بإســـتقبال\nالبيانـات إلكترونيـاً و معالجتهـا في أسـرع\nوقت وبأقل تكلفة في إطار من الشفافية\n و الأمان.",
    ),
    OnBoardingModel(
      imagePath: 'assets/images/splash.gif',
      title: "خدمات الموبايل بتجربة \n مستخدم أفضل",
      description:
          "يمنحـك تطبيـق الموبايل من منصة نافـذة\nأفضل تصميم وتجربة للمستخدم بالإضافة\nإلـى العديـد من المزايا والخدمات الجديدة،\nكمـا يتيـح لـك تنفيـذ معاملاتـك جمركيـة\nبشكل لحظي.",
    ),
    OnBoardingModel(
      imagePath: 'assets/images/splash.gif',
      title: "أعلى مستويات الأمان عند \n تنفيذ المعاملات",
      description:
          "تطبيـق أعلـي معاييـر أمـن المعلومـات\nلضمان سرية المعلومات وحمايتها مـن\nالوصول إليها بطريقة غير مصرح بها.",
    ),
    OnBoardingModel(
      imagePath: 'assets/images/splash.gif',
      title: "مراقبة لحظية لكافة \n المعاملات من تطبيق واحد",
      description:
          "يمنحك التطبيق إمكانية متابعة جميع\nمعاملاتـك  الجمركيـة   مـن  الإقــرارات\n(منتهية او جارية) بكل سهولة باللغتين\nالعربية والإنجليزية.",
    ),
    OnBoardingModel(
      imagePath: 'assets/images/splash.gif',
      title: "نظام التسجيل المُسبق \n للشحنات",
      description:
          "يمنحـك  التطبيـق   إمكانيـة  المتابعـة\nوالتحقـق من طلبـات التسجيل المُسبق\nللشحنات و الرقم التعريفي المُصدر لكل\nشحنة واردة.",
    ),
  ];
}
