class VehicleModel {
  VehicleModel({
    this.id,
    this.model,
    this.shortName,
    this.fuelType,
    this.seats,
  });

  int id;
  String model;
  String shortName;
  String fuelType;
  int seats;

  factory VehicleModel.fromJson(Map<String, dynamic> json) => VehicleModel(
        id: json["id"],
        model: json["model"],
        shortName: json["short_name"],
        fuelType: json["fuel_type"],
        seats: json["seats"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "model": model,
        "short_name": shortName,
        "fuel_type": fuelType,
        "seats": seats,
      };
}
