class Status {
  String name;
  String profileImage;
  String statusImage;

  Status({
    required this.name, 
    this.profileImage = '', 
    required this.statusImage,
  });
}