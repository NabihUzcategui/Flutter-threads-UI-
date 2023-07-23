class thread {
  String? name;
  String? posted;
  String? description;
  String? image;
  String? profileImage;
  String? likes;
  String? replies;
  String? replier;
  String? replier1;
  String? replier2;

  thread(
    this.name,
    this.posted,
    this.description,
    this.image,
    this.profileImage,
    this.likes,
    this.replies,
    this.replier,
    this.replier1,
    this.replier2,
  );

  factory thread.fromJson(Map<String, String> jsonObject) {
    return thread(
        jsonObject['name'],
        jsonObject['posted'],
        jsonObject['description'],
        jsonObject['image'],
        jsonObject['profileImage'],
        jsonObject['likes'],
        jsonObject['replies'],
        jsonObject['replier'],
        jsonObject['replier1'],
        jsonObject['replier2']);
  }
}
