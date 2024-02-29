class User {
  final String name;
  final String imageURL;
  bool isActive;
  bool addStory;
  bool viewedStory;

  User(
      {required this.name,
      required this.imageURL,
      this.isActive = false,
      this.addStory = false,
      this.viewedStory = false});
}
