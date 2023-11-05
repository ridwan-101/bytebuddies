import 'package:flutter/material.dart';

@immutable
class Palette extends ThemeExtension<Palette> {
  const Palette({
    required this.primary,
    required this.black,
    required this.white,
    required this.secondary,
    required this.red,
    required this.green,
    required this.blackLightActive,
  });

  final Color? primary;
  final Color? black;
  final Color? white;
  final Color? secondary;
  final Color? red;
  final Color? green;
  final Color? blackLightActive;

  @override
  Palette copyWith({
    Color? primary,
    Color? black,
    Color? white,
    Color? secondary,
    Color? red,
    Color? green,
    Color? blackLightActive,
  }) {
    return Palette(
      primary: primary ?? this.primary,
      black: black ?? this.black,
      white: white ?? this.white,
      secondary: secondary ?? this.secondary,
      red: red ?? this.red,
      green: green ?? this.green,
      blackLightActive: blackLightActive ?? this.blackLightActive,
    );
  }

  @override
  Palette lerp(Palette? other, double t) {
    if (other is! Palette) {
      return this;
    }
    return Palette(
      primary: Color.lerp(primary, other.primary, t),
      black: Color.lerp(black, other.black, t),
      white: Color.lerp(white, other.white, t),
      secondary: Color.lerp(secondary, other.secondary, t),
      red: Color.lerp(red, other.red, t),
      green: Color.lerp(green, other.green, t),
      blackLightActive: Color.lerp(blackLightActive, other.blackLightActive, t),
    );
  }
}
