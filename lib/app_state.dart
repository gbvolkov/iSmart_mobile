import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';
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
    _publicnews = prefs
            .getStringList('ff_publicnews')
            ?.map((path) => path.ref)
            ?.toList() ??
        _publicnews;
    _privatenews = prefs
            .getStringList('ff_privatenews')
            ?.map((path) => path.ref)
            ?.toList() ??
        _privatenews;
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

  String baseSimulatorURL = 'https://edu.ismart.org/learn/';

  List<DocumentReference> _publicnews = [];
  List<DocumentReference> get publicnews => _publicnews;
  set publicnews(List<DocumentReference> _value) {
    _publicnews = _value;
    prefs.setStringList('ff_publicnews', _value.map((x) => x.path).toList());
  }

  void addToPublicnews(DocumentReference _value) {
    _publicnews.add(_value);
    prefs.setStringList(
        'ff_publicnews', _publicnews.map((x) => x.path).toList());
  }

  void removeFromPublicnews(DocumentReference _value) {
    _publicnews.remove(_value);
    prefs.setStringList(
        'ff_publicnews', _publicnews.map((x) => x.path).toList());
  }

  List<DocumentReference> _privatenews = [];
  List<DocumentReference> get privatenews => _privatenews;
  set privatenews(List<DocumentReference> _value) {
    _privatenews = _value;
    prefs.setStringList('ff_privatenews', _value.map((x) => x.path).toList());
  }

  void addToPrivatenews(DocumentReference _value) {
    _privatenews.add(_value);
    prefs.setStringList(
        'ff_privatenews', _privatenews.map((x) => x.path).toList());
  }

  void removeFromPrivatenews(DocumentReference _value) {
    _privatenews.remove(_value);
    prefs.setStringList(
        'ff_privatenews', _privatenews.map((x) => x.path).toList());
  }
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
