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
  if (!imageURL.startsWith("https:")) {
    return baseURL + imageURL;
  } else {
    return imageURL;
  }
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
      return '$baseCategoryURL$parentCode/?categoryCode=$categoryCode';
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
  return '$baseCategoryURL$parentCode/$themeCode?categoryCode=$categoryCode';
}

String getSubThemePlatformURL(
  String baseSimulatorURL,
  ThemesRecord currentTheme,
  SubThemesRecord currentSubTheme,
  String currentSubjectSelectorID,
) {
  return '$baseSimulatorURL$currentSubjectSelectorID/${currentTheme.subjectId}/${currentTheme.classId}/${currentSubTheme.id}';
}

List<DocumentReference> filterThemes(
  List<DocumentReference> themesCollection,
  String regexString,
) {
  List<DocumentReference> result = [];
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
  if (regexString.isNotEmpty) {
    List<ThemesRecord> result = [];
    for (var theme in themesCollection) {
      if (('${theme.number} ${theme.name}')
          .toLowerCase()
          .contains(regexString.toLowerCase())) {
        result.add(theme);
      }
    }
    return result;
  } else {
    return themesCollection;
  }
}

List<SubThemesRecord> filterSubThemesList(
  List<SubThemesRecord> subThemesCollection,
  String regexString,
) {
  if (regexString.isNotEmpty) {
    List<SubThemesRecord> result = [];
    for (var subtheme in subThemesCollection) {
      if (('${subtheme.number}  ${subtheme.name}')
          .toLowerCase()
          .contains(regexString.toLowerCase())) {
        result.add(subtheme);
      }
    }
    return result;
  } else {
    return subThemesCollection;
  }
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
    return (cat1.className ?? "").compareTo(cat2.className ?? "");
  });
  return categories.first;
}

List<NewsRecord> joinNewsLists(
  List<NewsRecord> personalNews,
  List<NewsRecord> publicNews,
) {
  // Add your function code here!
  List<NewsRecord> joinNews = [];
  joinNews.addAll(personalNews);
  joinNews.addAll(publicNews);

  return joinNews;
}

DateTime addDays(
  DateTime currenttime,
  int days,
) {
  // Add your function code here!
  return currenttime.add(Duration(days: days));
}

List<NewsRecord> getMyNews(
  List<NewsRecord> news,
  DocumentReference user,
  String? newscategory,
) {
  // Add your function code here!
  List<NewsRecord> result = [];

  for (var newsItem in news) {
    var isPublic = newsItem.isPublic ?? false;
    var toList =
        (newsItem.toList) ?? [] as BuiltList<DocumentReference<UsersRecord>>;
    var category = newsItem.category ?? "*";
    var isMy = isPublic || toList.contains(user);
    var cat = newscategory ?? "*";
    var isCategory = (cat == "*") ||
        (cat.toLowerCase().compareTo(category.toLowerCase()) == 0);

    if (isMy && isCategory) {
      result.add(newsItem);
    }
  }
  return result;
}
