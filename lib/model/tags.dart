class Tags {
  String? name;

  Tags({this.name});

  Tags.fromJson(Map<String, dynamic> json) {
    name = json['name'];
  }
}
