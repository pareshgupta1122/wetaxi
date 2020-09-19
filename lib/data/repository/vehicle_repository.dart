import 'package:wetaxi/constants/endpoints.dart';
import 'package:wetaxi/data/network/api_helper.dart';
import 'package:wetaxi/models/vehicle_addon.dart';
import 'package:wetaxi/models/vehicle_model.dart';
import 'package:wetaxi/models/vehicle_name.dart';
import 'package:wetaxi/models/city.dart';

class VehicleRepository {
  ApiHelper _helper = ApiHelper();

  Future<List<VehicleName>> fetchVehicleNames() async {
    List<VehicleName> vehicleNames = [];
    Map<String, dynamic> response = await _helper.get(Endpoints.vehicleMakes);
    response["data"].toList().forEach((element) {
      vehicleNames.add(VehicleName.fromJson(element));
    });
    return vehicleNames;
  }

  Future<List<VehicleModel>> fetchVehicleModels() async {
    List<VehicleModel> vehicleModels = [];
    Map<String, dynamic> response =
        await _helper.get(Endpoints.vehicleModels);
    response["data"].toList().forEach((element) {
      vehicleModels.add(VehicleModel.fromJson(element));
    });
    return vehicleModels;
  }

  Future<List<VehicleAddon>> fetchVehicleAddons() async {
    List<VehicleAddon> vehicleAddons = [];
    Map<String, dynamic> response = await _helper.get(Endpoints.vehicleAddOns);
    response["data"].toList().forEach((element) {
      vehicleAddons.add(VehicleAddon.fromJson(element));
    });
    return vehicleAddons;
  }
}
