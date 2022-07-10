import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '../backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../auth/auth_util.dart';

String getImageURL(
  String baseURL,
  String imageURL,
) {
  return baseURL + imageURL;
}

String getImageURLString(
  String baseURL,
  String imageURL,
) {
  return baseURL + imageURL;
}

String getCategoryPlatformURL(
  String baseCategoryURL,
  String categoryCode,
  String categoryType,
  String categoryID,
  String subjectID,
  String classID,
  String parentCode,
) {
  switch (categoryType) {
    case "subjectSelectionGroup":
      return baseCategoryURL + categoryCode;
    case "subjectSelection":
      return baseCategoryURL + parentCode + "/?categoryCode=" + categoryCode;
    default:
      return baseCategoryURL;
  }
}
