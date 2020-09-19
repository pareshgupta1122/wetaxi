class VehicleAddon {
  VehicleAddon({
    this.name,
    this.slug,
    this.shortDescription,
    this.icon,
    this.image,
  });

  String name;
  String slug;
  String shortDescription;
  String icon;
  String image;

  factory VehicleAddon.fromJson(Map<String, dynamic> json) => VehicleAddon(
        name: json["name"],
        slug: json["slug"],
        shortDescription: json["short_description"],
        icon: json["icon"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "slug": slug,
        "short_description": shortDescription,
        "icon": icon,
        "image": image,
      };
}
