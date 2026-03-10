import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff486800),
      surfaceTint: Color(0xff486800),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffbaff29),
      onPrimaryContainer: Color(0xff517300),
      secondary: Color(0xff000666),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff1a237e),
      onSecondaryContainer: Color(0xff8690ee),
      tertiary: Color(0xff00696e),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff00f5ff),
      onTertiaryContainer: Color(0xff006c71),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff93000a),
      surface: Color(0xfffcf8f8),
      onSurface: Color(0xff1c1b1b),
      onSurfaceVariant: Color(0xff46464b),
      outline: Color(0xff76777c),
      outlineVariant: Color(0xffc7c6cb),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff313030),
      inversePrimary: Color(0xff9bd900),
      primaryFixed: Color(0xffb3f71e),
      onPrimaryFixed: Color(0xff131f00),
      primaryFixedDim: Color(0xff9bd900),
      onPrimaryFixedVariant: Color(0xff354e00),
      secondaryFixed: Color(0xffe0e0ff),
      onSecondaryFixed: Color(0xff000767),
      secondaryFixedDim: Color(0xffbdc2ff),
      onSecondaryFixedVariant: Color(0xff343d96),
      tertiaryFixed: Color(0xff63f7ff),
      onTertiaryFixed: Color(0xff002021),
      tertiaryFixedDim: Color(0xff00dce5),
      onTertiaryFixedVariant: Color(0xff004f53),
      surfaceDim: Color(0xffddd9d9),
      surfaceBright: Color(0xfffcf8f8),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff7f3f2),
      surfaceContainer: Color(0xfff1edec),
      surfaceContainerHigh: Color(0xffebe7e7),
      surfaceContainerHighest: Color(0xffe5e2e1),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff283c00),
      surfaceTint: Color(0xff486800),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff547800),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff000666),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff1a237e),
      onSecondaryContainer: Color(0xffb2b8ff),
      tertiary: Color(0xff003d40),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff00797e),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff740006),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffcf2c27),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffcf8f8),
      onSurface: Color(0xff111111),
      onSurfaceVariant: Color(0xff35363a),
      outline: Color(0xff525257),
      outlineVariant: Color(0xff6c6d72),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff313030),
      inversePrimary: Color(0xff9bd900),
      primaryFixed: Color(0xff547800),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff415d00),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff5b65bf),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff434ca5),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff00797e),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff005f63),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffc9c6c5),
      surfaceBright: Color(0xfffcf8f8),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff7f3f2),
      surfaceContainer: Color(0xffebe7e7),
      surfaceContainerHigh: Color(0xffe0dcdc),
      surfaceContainerHighest: Color(0xffd4d1d0),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff203100),
      surfaceTint: Color(0xff486800),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff375100),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff000666),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff1a237e),
      onSecondaryContainer: Color(0xffeae9ff),
      tertiary: Color(0xff003234),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff005255),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff600004),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff98000a),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffcf8f8),
      onSurface: Color(0xff000000),
      onSurfaceVariant: Color(0xff000000),
      outline: Color(0xff2b2c30),
      outlineVariant: Color(0xff48494d),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff313030),
      inversePrimary: Color(0xff9bd900),
      primaryFixed: Color(0xff375100),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff253800),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff363f98),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff1d2681),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff005255),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff00393c),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffbbb8b8),
      surfaceBright: Color(0xfffcf8f8),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff4f0ef),
      surfaceContainer: Color(0xffe5e2e1),
      surfaceContainerHigh: Color(0xffd7d4d3),
      surfaceContainerHighest: Color(0xffc9c6c5),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffffffff),
      surfaceTint: Color(0xff9bd900),
      onPrimary: Color(0xff243600),
      primaryContainer: Color(0xffb3f71e),
      onPrimaryContainer: Color(0xff4d6e00),
      secondary: Color(0xffbdc2ff),
      onSecondary: Color(0xff1b247f),
      secondaryContainer: Color(0xff1a237e),
      onSecondaryContainer: Color(0xff8690ee),
      tertiary: Color(0xffe9feff),
      onTertiary: Color(0xff003739),
      tertiaryContainer: Color(0xff00f5ff),
      onTertiaryContainer: Color(0xff006c71),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      surface: Color(0xff141313),
      onSurface: Color(0xffe5e2e1),
      onSurfaceVariant: Color(0xffc7c6cb),
      outline: Color(0xff909095),
      outlineVariant: Color(0xff46464b),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe5e2e1),
      inversePrimary: Color(0xff486800),
      primaryFixed: Color(0xffb3f71e),
      onPrimaryFixed: Color(0xff131f00),
      primaryFixedDim: Color(0xff9bd900),
      onPrimaryFixedVariant: Color(0xff354e00),
      secondaryFixed: Color(0xffe0e0ff),
      onSecondaryFixed: Color(0xff000767),
      secondaryFixedDim: Color(0xffbdc2ff),
      onSecondaryFixedVariant: Color(0xff343d96),
      tertiaryFixed: Color(0xff63f7ff),
      onTertiaryFixed: Color(0xff002021),
      tertiaryFixedDim: Color(0xff00dce5),
      onTertiaryFixedVariant: Color(0xff004f53),
      surfaceDim: Color(0xff141313),
      surfaceBright: Color(0xff3a3939),
      surfaceContainerLowest: Color(0xff0e0e0e),
      surfaceContainerLow: Color(0xff1c1b1b),
      surfaceContainer: Color(0xff201f1f),
      surfaceContainerHigh: Color(0xff2a2a2a),
      surfaceContainerHighest: Color(0xff353434),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffffffff),
      surfaceTint: Color(0xff9bd900),
      onPrimary: Color(0xff243600),
      primaryContainer: Color(0xffb3f71e),
      onPrimaryContainer: Color(0xff364f00),
      secondary: Color(0xffd8d9ff),
      onSecondary: Color(0xff0c1574),
      secondaryContainer: Color(0xff8089e6),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xffe9feff),
      onTertiary: Color(0xff003739),
      tertiaryContainer: Color(0xff00f5ff),
      onTertiaryContainer: Color(0xff004d51),
      error: Color(0xffffd2cc),
      onError: Color(0xff540003),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff141313),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xffdddbe1),
      outline: Color(0xffb2b1b7),
      outlineVariant: Color(0xff909095),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe5e2e1),
      inversePrimary: Color(0xff364f00),
      primaryFixed: Color(0xffb3f71e),
      onPrimaryFixed: Color(0xff0b1400),
      primaryFixedDim: Color(0xff9bd900),
      onPrimaryFixedVariant: Color(0xff283c00),
      secondaryFixed: Color(0xffe0e0ff),
      onSecondaryFixed: Color(0xff00034a),
      secondaryFixedDim: Color(0xffbdc2ff),
      onSecondaryFixedVariant: Color(0xff222a84),
      tertiaryFixed: Color(0xff63f7ff),
      onTertiaryFixed: Color(0xff001415),
      tertiaryFixedDim: Color(0xff00dce5),
      onTertiaryFixedVariant: Color(0xff003d40),
      surfaceDim: Color(0xff141313),
      surfaceBright: Color(0xff454444),
      surfaceContainerLowest: Color(0xff070707),
      surfaceContainerLow: Color(0xff1e1d1d),
      surfaceContainer: Color(0xff282828),
      surfaceContainerHigh: Color(0xff333232),
      surfaceContainerHighest: Color(0xff3e3d3d),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffffffff),
      surfaceTint: Color(0xff9bd900),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xffb3f71e),
      onPrimaryContainer: Color(0xff1f2f00),
      secondary: Color(0xfff0eeff),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xffb8beff),
      onSecondaryContainer: Color(0xff000239),
      tertiary: Color(0xffe9feff),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xff00f5ff),
      onTertiaryContainer: Color(0xff002c2e),
      error: Color(0xffffece9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffaea4),
      onErrorContainer: Color(0xff220001),
      surface: Color(0xff141313),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xffffffff),
      outline: Color(0xfff1eff5),
      outlineVariant: Color(0xffc3c2c7),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe5e2e1),
      inversePrimary: Color(0xff364f00),
      primaryFixed: Color(0xffb3f71e),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xff9bd900),
      onPrimaryFixedVariant: Color(0xff0b1400),
      secondaryFixed: Color(0xffe0e0ff),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xffbdc2ff),
      onSecondaryFixedVariant: Color(0xff00034a),
      tertiaryFixed: Color(0xff63f7ff),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xff00dce5),
      onTertiaryFixedVariant: Color(0xff001415),
      surfaceDim: Color(0xff141313),
      surfaceBright: Color(0xff515050),
      surfaceContainerLowest: Color(0xff000000),
      surfaceContainerLow: Color(0xff201f1f),
      surfaceContainer: Color(0xff313030),
      surfaceContainerHigh: Color(0xff3c3b3b),
      surfaceContainerHighest: Color(0xff484646),
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
    scaffoldBackgroundColor: colorScheme.surface,
    canvasColor: colorScheme.surface,
  );

  List<ExtendedColor> get extendedColors => [];
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
