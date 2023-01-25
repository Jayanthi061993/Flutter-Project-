class OnboardPageModel {
  String? assetsPath;
  String? title;
  String? description;

  OnboardPageModel({this.assetsPath, this.title, this.description});

  void setassetsPath(String getassetsPath) {
    assetsPath = getassetsPath;
  }

  void settitle(String gettitle) {
    title = gettitle;
  }

  void setdescription(String getdescription) {
    description = getdescription;
  }

  String? getassetsPath() {
    return assetsPath;
  }

  String? gettitel() {
    return title;
  }

  String? getdescription() {
    return description;
  }
}

List<OnboardPageModel> getPages() {}
