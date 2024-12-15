import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';
import '/auth/custom_auth/auth_util.dart';

List<String> duplicatedCountriesRemoval(List<String> universities) {
  // 중복 제거
  List<String> uniqueCountries = universities.toSet().toList();

  return uniqueCountries;
}

List<String> filteredUniversities(
  dynamic getUnivsJSON,
  String selectedcountry,
) {
  // null-safe 처리 및 JSON 필터링
  List<String> filteredList = (getUnivsJSON as List<dynamic>?)
          ?.where((uni) => uni['country_code'] == selectedcountry) // 선택된 국가 필터링
          ?.map((uni) => uni['name'] as String) // 대학 이름만 추출
          ?.toList() ?? // List로 변환
      []; // null인 경우 빈 리스트 반환

  return filteredList; // 필터링된 대학 이름 리스트 반환
}

int? univToID(
  String? universityName,
  dynamic alljson,
) {
  // 입력값 검증
  if (universityName == null || alljson == null) {
    return null; // 입력값이 없을 경우 null 반환
  }

  try {
    // 대학 이름과 일치하는 ID 검색
    int? universityId = (alljson as List<dynamic>)
        .firstWhere((uni) => uni['name'] == universityName)['id'] as int?;
    return universityId;
  } catch (e) {
    // 검색 결과가 없으면 null 반환
    return null;
  }
}

dynamic postCREATEJsonmaker(
  int boardid,
  String title,
  String content,
  bool anonym,
  List<String>? tags,
  bool qna,
) {
  // tags가 null인 경우 빈 리스트로 초기화
  tags ??= [];

  // JSON 객체 생성
  final Map<String, dynamic> postData = {
    "board_id": boardid,
    "title": title,
    "content": content,
    "anonym": anonym,
    "tags": tags,
    "qna": qna,
  };

  // JSON 객체를 문자열로 변환
  return jsonEncode(postData);
}

List<FFUploadedFile>? convertStringsToUploadedFiles(List<String>? stringList) {
  if (stringList == null) {
    return [];
  }

  final List<FFUploadedFile> files = [];
  for (final base64Str in stringList) {
    try {
      final bytes = base64Decode(base64Str);
      final file = FFUploadedFile(
        bytes: bytes,
      );
      files.add(file);
    } catch (_) {
      // Base64 decoding 실패 시 해당 문자열은 무시
    }
  }

  return files;
}
