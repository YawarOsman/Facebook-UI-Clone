import 'package:flutter/widgets.dart';

class Reactions {
  Reactions._();

  static const _kFontFam = 'Reaction';
  static const String? _kFontPkg = null;

  static const IconData thumbs_up = IconData(0xe801, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData heart = IconData(0xe802, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData thumbs_up_alt = IconData(0xf164, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData angry = IconData(0xf556, fontFamily: _kFontFam, fontPackage: _kFontPkg);

}
class Share {
  Share._();

  static const _kFontFam = 'Share';
  static const String? _kFontPkg = null;

  static const IconData share = IconData(0xe800, fontFamily: _kFontFam, fontPackage: _kFontPkg);
}