import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xffba0a00),
      surfaceTint: Color(0xffbf0a00),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffe51f0d),
      onPrimaryContainer: Color(0xfffffbff),
      secondary: Color(0xffad3222),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xfffe6d57),
      onSecondaryContainer: Color(0xff6d0300),
      tertiary: Color(0xff7f5300),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffa06900),
      onTertiaryContainer: Color(0xfffffbff),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff93000a),
      surface: Color(0xfffff8f6),
      onSurface: Color(0xff291714),
      onSurfaceVariant: Color(0xff5e3f3a),
      outline: Color(0xff936e68),
      outlineVariant: Color(0xffe8bdb5),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff402b28),
      inversePrimary: Color(0xffffb4a7),
      primaryFixed: Color(0xffffdad4),
      onPrimaryFixed: Color(0xff400100),
      primaryFixedDim: Color(0xffffb4a7),
      onPrimaryFixedVariant: Color(0xff920600),
      secondaryFixed: Color(0xffffdad4),
      onSecondaryFixed: Color(0xff400100),
      secondaryFixedDim: Color(0xffffb4a7),
      onSecondaryFixedVariant: Color(0xff8b1a0d),
      tertiaryFixed: Color(0xffffddb4),
      onTertiaryFixed: Color(0xff291800),
      tertiaryFixedDim: Color(0xffffb954),
      onTertiaryFixedVariant: Color(0xff633f00),
      surfaceDim: Color(0xfff5d2cd),
      surfaceBright: Color(0xfffff8f6),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffff0ee),
      surfaceContainer: Color(0xffffe9e5),
      surfaceContainerHigh: Color(0xffffe2dd),
      surfaceContainerHighest: Color(0xfffedbd5),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff730400),
      surfaceTint: Color(0xffbf0a00),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffd91304),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff720400),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffc1412f),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff4d3000),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff966200),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff740006),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffcf2c27),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffff8f6),
      onSurface: Color(0xff1d0d0a),
      onSurfaceVariant: Color(0xff4b2f2a),
      outline: Color(0xff6b4b45),
      outlineVariant: Color(0xff88655f),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff402b28),
      inversePrimary: Color(0xffffb4a7),
      primaryFixed: Color(0xffd91304),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xffac0800),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xffc1412f),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff9f281a),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff966200),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff764c00),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffe0bfb9),
      surfaceBright: Color(0xfffff8f6),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffff0ee),
      surfaceContainer: Color(0xffffe2dd),
      surfaceContainerHigh: Color(0xfff8d5cf),
      surfaceContainerHighest: Color(0xffeccac4),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff600300),
      surfaceTint: Color(0xffbf0a00),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff970600),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff600300),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff8e1c0f),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff402700),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff664100),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff600004),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff98000a),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffff8f6),
      onSurface: Color(0xff000000),
      onSurfaceVariant: Color(0xff000000),
      outline: Color(0xff402521),
      outlineVariant: Color(0xff60413c),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff402b28),
      inversePrimary: Color(0xffffb4a7),
      primaryFixed: Color(0xff970600),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff6c0300),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff8e1c0f),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff6c0300),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff664100),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff482d00),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffd2b1ac),
      surfaceBright: Color(0xfffff8f6),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xffffedea),
      surfaceContainer: Color(0xfffedbd5),
      surfaceContainerHigh: Color(0xffefcdc7),
      surfaceContainerHighest: Color(0xffe0bfb9),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffffb4a7),
      surfaceTint: Color(0xffffb4a7),
      onPrimary: Color(0xff680300),
      primaryContainer: Color(0xffff553e),
      onPrimaryContainer: Color(0xff470100),
      secondary: Color(0xffffb4a7),
      onSecondary: Color(0xff680300),
      secondaryContainer: Color(0xff8e1c0f),
      onSecondaryContainer: Color(0xffff9f8f),
      tertiary: Color(0xffffb954),
      onTertiary: Color(0xff452b00),
      tertiaryContainer: Color(0xffc48312),
      onTertiaryContainer: Color(0xff2e1b00),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      surface: Color(0xff200f0c),
      onSurface: Color(0xfffedbd5),
      onSurfaceVariant: Color(0xffe8bdb5),
      outline: Color(0xffae8881),
      outlineVariant: Color(0xff5e3f3a),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xfffedbd5),
      inversePrimary: Color(0xffbf0a00),
      primaryFixed: Color(0xffffdad4),
      onPrimaryFixed: Color(0xff400100),
      primaryFixedDim: Color(0xffffb4a7),
      onPrimaryFixedVariant: Color(0xff920600),
      secondaryFixed: Color(0xffffdad4),
      onSecondaryFixed: Color(0xff400100),
      secondaryFixedDim: Color(0xffffb4a7),
      onSecondaryFixedVariant: Color(0xff8b1a0d),
      tertiaryFixed: Color(0xffffddb4),
      onTertiaryFixed: Color(0xff291800),
      tertiaryFixedDim: Color(0xffffb954),
      onTertiaryFixedVariant: Color(0xff633f00),
      surfaceDim: Color(0xff200f0c),
      surfaceBright: Color(0xff4a3430),
      surfaceContainerLowest: Color(0xff1a0a07),
      surfaceContainerLow: Color(0xff291714),
      surfaceContainer: Color(0xff2e1b18),
      surfaceContainerHigh: Color(0xff392521),
      surfaceContainerHighest: Color(0xff452f2c),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffffd2cb),
      surfaceTint: Color(0xffffb4a7),
      onPrimary: Color(0xff530200),
      primaryContainer: Color(0xffff553e),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xffffd2cb),
      onSecondary: Color(0xff530200),
      secondaryContainer: Color(0xfff1634e),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xffffd6a1),
      onTertiary: Color(0xff372100),
      tertiaryContainer: Color(0xffc48312),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xffffd2cc),
      onError: Color(0xff540003),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff200f0c),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xffffd2cb),
      outline: Color(0xffd2a8a1),
      outlineVariant: Color(0xffae8781),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xfffedbd5),
      inversePrimary: Color(0xff940600),
      primaryFixed: Color(0xffffdad4),
      onPrimaryFixed: Color(0xff2d0100),
      primaryFixedDim: Color(0xffffb4a7),
      onPrimaryFixedVariant: Color(0xff730400),
      secondaryFixed: Color(0xffffdad4),
      onSecondaryFixed: Color(0xff2d0100),
      secondaryFixedDim: Color(0xffffb4a7),
      onSecondaryFixedVariant: Color(0xff720400),
      tertiaryFixed: Color(0xffffddb4),
      onTertiaryFixed: Color(0xff1b0e00),
      tertiaryFixedDim: Color(0xffffb954),
      onTertiaryFixedVariant: Color(0xff4d3000),
      surfaceDim: Color(0xff200f0c),
      surfaceBright: Color(0xff563f3b),
      surfaceContainerLowest: Color(0xff120403),
      surfaceContainerLow: Color(0xff2b1916),
      surfaceContainer: Color(0xff37231f),
      surfaceContainerHigh: Color(0xff432d2a),
      surfaceContainerHighest: Color(0xff4f3834),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffffece9),
      surfaceTint: Color(0xffffb4a7),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xffffaea1),
      onPrimaryContainer: Color(0xff220000),
      secondary: Color(0xffffece9),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xffffaea1),
      onSecondaryContainer: Color(0xff220000),
      tertiary: Color(0xffffeddb),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xfffeb446),
      onTertiaryContainer: Color(0xff140900),
      error: Color(0xffffece9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffaea4),
      onErrorContainer: Color(0xff220001),
      surface: Color(0xff200f0c),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xffffffff),
      outline: Color(0xffffece9),
      outlineVariant: Color(0xffe4b9b2),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xfffedbd5),
      inversePrimary: Color(0xff940600),
      primaryFixed: Color(0xffffdad4),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xffffb4a7),
      onPrimaryFixedVariant: Color(0xff2d0100),
      secondaryFixed: Color(0xffffdad4),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xffffb4a7),
      onSecondaryFixedVariant: Color(0xff2d0100),
      tertiaryFixed: Color(0xffffddb4),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xffffb954),
      onTertiaryFixedVariant: Color(0xff1b0e00),
      surfaceDim: Color(0xff200f0c),
      surfaceBright: Color(0xff634a46),
      surfaceContainerLowest: Color(0xff000000),
      surfaceContainerLow: Color(0xff2e1b18),
      surfaceContainer: Color(0xff402b28),
      surfaceContainerHigh: Color(0xff4c3632),
      surfaceContainerHighest: Color(0xff59413d),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme());
  }


  ThemeData theme(ColorScheme colorScheme) => ThemeData(
     useMaterial3: true,
     brightness: colorScheme.brightness,
     colorScheme: colorScheme,
     textTheme: textTheme.apply(
       bodyColor: colorScheme.onSurface,
       displayColor: colorScheme.onSurface,
     ),
     scaffoldBackgroundColor: colorScheme.background,
     canvasColor: colorScheme.surface,
  );


  List<ExtendedColor> get extendedColors => [
  ];
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
