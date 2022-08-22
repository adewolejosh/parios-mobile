
import 'package:flutter/material.dart';


Color hexToColor(String code) {
  return Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
}

// for texts
Color get titlePrimaryColor { return hexToColor('#0D374F'); }
Color get bodyPrimaryColor { return hexToColor('#05445E'); }

Color get boxPrimaryColor { return hexToColor('#189AB4'); }

// for bottom nav
Color get bottomActiveColor { return hexToColor('#189AB4'); }
Color get bottomInactiveColor { return hexToColor('#D4F1F4'); }