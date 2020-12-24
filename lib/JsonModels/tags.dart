class Tags {
  final List tags;

  Tags({this.tags});

  factory Tags.fromJson(Map<String, dynamic> json) {
    return Tags(
      tags: json['tags']
    );
  }
}
