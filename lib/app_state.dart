import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/lat_lng.dart';
import 'dart:convert';

class FFAppState {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
  }

  SharedPreferences prefs;

  String baseURL = 'https://storage.yandexcloud.net/ismart-files/assets/';

  String baseCategoryPlatformURL = 'https://edu.ismart.org/catalog/';

  String subjectSelectionGroupCode = 'math_full';

  String subjectSelectionCode = 'c5c3a5-school-matematika-1-klass-full';

  String subjectSelectionID = '';

  String currentClassID = '';

  String currentSubjectID = '';

  dynamic searchResult;
}

LatLng _latLngFromString(String val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}
