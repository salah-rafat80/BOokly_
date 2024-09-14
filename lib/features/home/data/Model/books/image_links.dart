class ImageLinks {
  String? smallThumbnail;
  String? thumbnail;
  String? small;
  String? medium;
  String? large;
  String? extraLarge;

  ImageLinks({
    this.smallThumbnail,
    this.thumbnail,
    this.small,
    this.medium,
    this.large,
    this.extraLarge,
  });

  factory ImageLinks.fromJson(Map<String, dynamic> json) => ImageLinks(
        smallThumbnail: json['smallThumbnail'] as String?,
        thumbnail: json['thumbnail'] as String?,
        small: json['small'] as String?,
        medium: json['medium'] as String?,
        large: json['large'] as String?,
        extraLarge: json['extraLarge'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'smallThumbnail': smallThumbnail,
        'thumbnail': thumbnail,
        'small': small,
        'medium': medium,
        'large': large,
        'extraLarge': extraLarge,
      };
}
