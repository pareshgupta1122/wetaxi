class VehicleName {
  VehicleName({
    this.id,
    this.name,
  });

  final int id;
  final String name;

  factory VehicleName.fromJson(Map<String, dynamic> json) => VehicleName(
        id: json["id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
      };
}
