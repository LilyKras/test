import 'package:flutter/material.dart';

class ThemeColors extends ThemeExtension<ThemeColors> {
  final Color roundedBorderColor;

  const ThemeColors({
    required this.roundedBorderColor,
  });

  @override
  ThemeExtension<ThemeColors> copyWith({
    Color? roundedBorderColor,
  }) {
    return ThemeColors(
      roundedBorderColor: roundedBorderColor ?? this.roundedBorderColor,
    );
  }

  @override
  ThemeExtension<ThemeColors> lerp(
    ThemeExtension<ThemeColors>? other,
    double t,
  ) {
    if (other is! ThemeColors) {
      return this;
    }

    return ThemeColors(
      roundedBorderColor:
          Color.lerp(roundedBorderColor, other.roundedBorderColor, t)!,
    );
  }

  static get light => const ThemeColors(
        roundedBorderColor: Color(0xFFA9B5C1),
      );

  static get dark => const ThemeColors(roundedBorderColor: Colors.white);
}

class ThemeGradients extends ThemeExtension<ThemeGradients> {
  final Gradient backGroundGradient;

  const ThemeGradients({
    required this.backGroundGradient,
  });

  @override
  ThemeExtension<ThemeGradients> copyWith({
    Gradient? backGroundGradient,
  }) {
    return ThemeGradients(
      backGroundGradient: backGroundGradient ?? this.backGroundGradient,
    );
  }

  @override
  ThemeExtension<ThemeGradients> lerp(
    ThemeExtension<ThemeGradients>? other,
    double t,
  ) {
    if (other is! ThemeGradients) {
      return this;
    }

    return ThemeGradients(
      backGroundGradient:
          Gradient.lerp(backGroundGradient, other.backGroundGradient, t)!,
    );
  }

  static get light => const ThemeGradients(
        backGroundGradient: LinearGradient(
          colors: [],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      );

  static get dark => const ThemeGradients(
        backGroundGradient: LinearGradient(
          colors: [],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      );
}
