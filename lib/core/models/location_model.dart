class Location {
  String? name;
  String? location;
  String? imgUrl;
  String? description;
  double? rating;
  int? visits;

  Location(
      {this.name,
      this.location,
      this.imgUrl,
      this.description,
      this.rating,
      this.visits});

  Location.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    location = json['location'];
    imgUrl = json['img_url'];
    description = json['description'];
    rating = json['rating'];
    visits = json['visits'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['location'] = location;
    data['img_url'] = imgUrl;
    data['description'] = description;
    data['rating'] = rating;
    data['visits'] = visits;
    return data;
  }
}
