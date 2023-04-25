import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:geocoding/geocoding.dart';

enum Select { myanmar, english }

class FormController extends GetxController {
  final Rx<Select> _initSelect = Select.english.obs;
  Select get initSelect => _initSelect.value;

  final RxString _currentAddress = "".obs;
  String get currentAddress => _currentAddress.value;
  set currentAddress(val) => _currentAddress.value = val;

  final Rx<Position> _currentPosition = Position(
          longitude: 0.0,
          latitude: 0.0,
          timestamp: DateTime.now(),
          accuracy: 0.0,
          altitude: 0.0,
          heading: 0.0,
          speed: 0.0,
          speedAccuracy: 0.0)
      .obs;
  Position get currentPosition => _currentPosition.value;
  set currentPosition(val) => _currentPosition.value = val;

  void selectMyanmar() {
    _initSelect.value = Select.myanmar;
    Get.updateLocale(const Locale('mm_Mm'));
  }

  void selectEnglish() {
    _initSelect.value = Select.english;
    Get.updateLocale(const Locale('en_En'));
  }

// Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
  Future<void> getAddressFromLatLng(Position position) async {
    print("getaddress fun call");
    await placemarkFromCoordinates(
            _currentPosition.value.latitude, _currentPosition.value.longitude)
        .then((List<Placemark> placemarks) {
      Placemark place = placemarks[0];
      // setState(() {
      _currentAddress.value =
          "${place.street}, ${place.subLocality}${place.subAdministrativeArea}, ${place.postalCode}";
      print("address=> ${_currentAddress.value}");
      print("name${place.name}");
      print("adminstrativearea ${place.administrativeArea}");
      // });
    }).catchError((e) {
      debugPrint(e);
    });
  }

  RxBool _open = false.obs;
  bool get open => _open.value;
  set open(val) => _open.value = val;
  Future<void> getCurrentPosition() async {
    _open.value = true;
    final hasPermission = await _handleLocationPermission();
    if (!hasPermission) return;
    await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high)
        .then((Position position) {
      _currentPosition.value = position;
      getAddressFromLatLng(_currentPosition.value);
    }).catchError((e) {
      debugPrint(e);
    });
  }

  Future<bool> _handleLocationPermission() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      Get.snackbar("title",
          "Location services are disabled. Please enable the services");
      // ScaffoldMessenger.of(context)+
      // .showSnackBar(const SnackBar(
      // content: Text('Location services are disabled. Please enable the services')));
      return false;
    }
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        Get.snackbar("title", "Location permissions are denied");
        // ScaffoldMessenger.of(context).showSnackBar(
        // const SnackBar(content: Text('Location permissions are denied')));
        return false;
      }
    }
    if (permission == LocationPermission.deniedForever) {
      Get.snackbar("title",
          "Location permissions are permanently denied, we cannot request permissions.");
      // ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
      // content: Text('Location permissions are permanently denied, we cannot request permissions.')));
      return false;
    }
    return true;
  }
}
