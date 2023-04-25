import 'package:citymallonline/app/translation/english.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'myanmar.dart';
class AppTranslation extends Translations{
  @override
static const Locale locale=Locale('en','En');
static const Locale fallbackLocale=Locale('en','En');

  @override
  Map<String, Map<String, String>> get keys =>{
'mm_Mm':englishToMyanmar,
'en_En':myanmarToEnglish,

  };
  //  throw UnimplementedError();

}