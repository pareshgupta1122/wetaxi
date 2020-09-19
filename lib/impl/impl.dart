import 'dart:async';
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:wetaxi/data/repository/vehicle_repository.dart';
import 'package:wetaxi/data/shared_prefs/shared_prefs_helper.dart';
import 'package:wetaxi/models/vehicle_addon.dart';
import 'package:wetaxi/models/vehicle_model.dart';
import 'package:wetaxi/models/vehicle_name.dart';
import 'package:wetaxi/models/city.dart';

class Impl {

  VehicleRepository _repository = new VehicleRepository();

  Future<List<VehicleName>> getVehicleNamesList() async {
    final List<VehicleName> vehicleNames = await _repository.fetchVehicleNames();
    return vehicleNames;
  }

  Future<List<VehicleModel>> getVehicleModelsList() async {
    final List<VehicleModel> vehicleModels = await _repository.fetchVehicleModels();
    return vehicleModels;
  }

  Future<List<VehicleAddon>> getVehicleAddons() async {
    final List<VehicleAddon> vehicleAddons = await _repository.fetchVehicleAddons();
    return vehicleAddons;
  }

}