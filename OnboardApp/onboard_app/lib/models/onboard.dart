class OnboardModel {
  String? assetsPath;
  String? title;
  String? description;

  OnboardModel({this.assetsPath, this.title, this.description});

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

List<OnboardModel> getPages() {
  List<OnboardModel> onboardpages = <OnboardModel>[];

  //Page1
  OnboardModel onboardpage = OnboardModel();

  onboardpage.setAssetsPath('assets/bank.png');
  onboardpage.setTitle('Save Your Balance');
  onboardpage.setDescription(
      'Providing with Best Solution to save your balance and transactions');

  onboardpages.add(onboardpage);

  //Page2
  onboardpage = OnboardModel();

  onboardpage.setAssetsPath('assets/mobile-banking.png');
  onboardpage.setTitle('Make it Simple');
  onboardpage.setDescription(
      'We pay attention to all your payments and find way to save your money');

  onboardpages.add(onboardpage);

  //Page3
  onboardpage = OnboardModel();

  onboardpage.setAssetsPath('assets/credit-card.png');
  onboardpage.setTitle('New Banking');
  onboardpage.setDescription(
      'Providing with Free advisory service, mobile banking application, Visa debit Cards');

  onboardpages.add(onboardpage);
  return onboardpages;
}
