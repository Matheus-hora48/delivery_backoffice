import 'package:flutter/material.dart';

class ColorsApp {
  static ColorsApp? _instance;

  ColorsApp._();

  static ColorsApp get instance {
    _instance ??= ColorsApp._();
    return _instance!;
  }

  Color get primary => const Color(0xff007d21);
  Color get secondary => const Color(0xffffab18);
  Color get black => const Color(0xff140e0e);
}

extension ColorsAppException on BuildContext {
  ColorsApp get colors => ColorsApp.instance;
}
