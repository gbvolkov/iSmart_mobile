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

String getThemePlatformURL(
  String baseCategoryURL,
  String categoryCode,
  String parentCode,
  String themeCode,
) {
  return baseCategoryURL +
      parentCode +
      "/" +
      themeCode +
      "?categoryCode=" +
      categoryCode;
}

String getSubThemePlatformURL(
  String baseSimulatorURL,
  ThemesRecord currentTheme,
  SubThemesRecord currentSubTheme,
  String currentSubjectSelectorID,
) {
  return baseSimulatorURL +
      currentSubjectSelectorID +
      "/" +
      currentTheme.subjectId +
      "/" +
      currentTheme.classId +
      "/" +
      currentSubTheme.id;
}

List<DocumentReference> filterThemes(
  List<DocumentReference> themesCollection,
  String regexString,
) {
  List<DocumentReference> result;
  for (var theme in themesCollection) {
    if (theme.toString().contains(regexString)) {
      result.add(theme);
    }
  }
  return result;
}

List<ThemesRecord> filterThemesList(
  List<ThemesRecord> themesCollection,
  String regexString,
) {
  List<ThemesRecord> result;
  for (var theme in themesCollection) {
    if (theme.toString().contains(regexString)) {
      result.add(theme);
    }
  }
  return result;
}

DocumentReference getFirstCategory(List<DocumentReference> categiriesList) {
  // Add your function code here!
  return categiriesList.first;
}

CategoriesRecord getFirstCategoryFromList(
  List<CategoriesRecord> categories,
  String parentId,
) {
  // Add your function code here!
  categories.removeWhere((cat) {
    return cat.parentId != parentId;
  });
  categories.sort((cat1, cat2) {
    return cat1.className.compareTo(cat2.className);
  });
  return categories.first;
}
