class OnboardPageModel {
  String? assetsPath;
  String? title;
  String? description;

  OnboardPageModel({this.assetsPath, this.title, this.description});

  void setAssetsPath(String getAssetsPath) {
    assetsPath = getAssetsPath;
  }

  void setTitle(String getTitle) {
    title = getTitle;
  }

  void setDescription(String getDescription) {
    description = getDescription;
  }

  String? getAssetsPath() {
    return assetsPath;
  }

  String? getTitle() {
    return title;
  }

  String? getDescription() {
    return description;
  }
}

List<OnboardPageModel> getPages() {
  List<OnboardPageModel> onboardpages = <OnboardPageModel>[];

  //Page1
  OnboardPageModel onboardpagemodel = OnboardPageModel();

  onboardpagemodel.setAssetsPath('assets/savings1.png');
  onboardpagemodel.setTitle('Title1');
  onboardpagemodel.setDescription('Description1');

  onboardpages.add(onboardpagemodel);

  //Page2
  onboardpagemodel = OnboardPageModel();

  onboardpagemodel.setAssetsPath('assets/stripe1.png');
  onboardpagemodel.setTitle('Title2');
  onboardpagemodel.setDescription('Description2');

  onboardpages.add(onboardpagemodel);

  //Page3
  onboardpagemodel = OnboardPageModel();

  onboardpagemodel.setAssetsPath('assets/creditcard1.png');
  onboardpagemodel.setTitle('Title3');
  onboardpagemodel.setDescription('Description3');

  onboardpages.add(onboardpagemodel);
}
