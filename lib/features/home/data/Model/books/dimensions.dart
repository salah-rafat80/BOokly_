class Dimensions {
  String? height;

  Dimensions({this.height});

  factory Dimensions.fromJson(Map<String, dynamic> json) => Dimensions(
        height: json['height'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'height': height,
      };
}
