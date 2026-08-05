import 'dart:ui';
import 'package:flutter/material.dart';

@immutable
class VividPresenceThemeExtension
    extends ThemeExtension<VividPresenceThemeExtension> {
  // Brand & Palette Tokens
  final Color surfaceDim;
  final Color surfaceBright;
  final Color surfaceContainerLowest;
  final Color surfaceContainerLow;
  final Color surfaceContainer;
  final Color surfaceContainerHigh;
  final Color surfaceContainerHighest;
  final Color onSurfaceVariant;
  final Color inverseSurface;
  final Color inverseOnSurface;
  final Color outlineVariant;
  final Color primaryContainer;
  final Color onPrimaryContainer;
  final Color secondaryContainer;
  final Color onSecondaryContainer;
  final Color tertiary;
  final Color onTertiary;
  final Color tertiaryContainer;
  final Color onTertiaryContainer;
  final Color errorContainer;
  final Color onErrorContainer;
  final Color softMint;
  final Color warmAmber;

  // Fixed Roles
  final Color primaryFixed;
  final Color primaryFixedDim;
  final Color onPrimaryFixed;
  final Color onPrimaryFixedVariant;
  final Color secondaryFixed;
  final Color secondaryFixedDim;
  final Color onSecondaryFixed;
  final Color onSecondaryFixedVariant;
  final Color tertiaryFixed;
  final Color tertiaryFixedDim;
  final Color onTertiaryFixed;
  final Color onTertiaryFixedVariant;

  // Spacing Tokens
  final double spaceXxs;
  final double spaceXs;
  final double spaceSm;
  final double spaceMd;
  final double spaceLg;
  final double spaceXl;
  final double gutter;
  final double marginMobile;
  final double marginDesktop;

  // Custom Typography
  final TextStyle headlineLgMobile;

  // Custom Elevation / Glassmorphism
  final BoxShadow ambientShadow;
  final double glassBlur;

  const VividPresenceThemeExtension({
    required this.surfaceDim,
    required this.surfaceBright,
    required this.surfaceContainerLowest,
    required this.surfaceContainerLow,
    required this.surfaceContainer,
    required this.surfaceContainerHigh,
    required this.surfaceContainerHighest,
    required this.onSurfaceVariant,
    required this.inverseSurface,
    required this.inverseOnSurface,
    required this.outlineVariant,
    required this.primaryContainer,
    required this.onPrimaryContainer,
    required this.secondaryContainer,
    required this.onSecondaryContainer,
    required this.tertiary,
    required this.onTertiary,
    required this.tertiaryContainer,
    required this.onTertiaryContainer,
    required this.errorContainer,
    required this.onErrorContainer,
    required this.softMint,
    required this.warmAmber,
    required this.primaryFixed,
    required this.primaryFixedDim,
    required this.onPrimaryFixed,
    required this.onPrimaryFixedVariant,
    required this.secondaryFixed,
    required this.secondaryFixedDim,
    required this.onSecondaryFixed,
    required this.onSecondaryFixedVariant,
    required this.tertiaryFixed,
    required this.tertiaryFixedDim,
    required this.onTertiaryFixed,
    required this.onTertiaryFixedVariant,
    required this.spaceXxs,
    required this.spaceXs,
    required this.spaceSm,
    required this.spaceMd,
    required this.spaceLg,
    required this.spaceXl,
    required this.gutter,
    required this.marginMobile,
    required this.marginDesktop,
    required this.headlineLgMobile,
    required this.ambientShadow,
    required this.glassBlur,
  });

  @override
  VividPresenceThemeExtension copyWith({
    Color? surfaceDim,
    Color? surfaceBright,
    Color? surfaceContainerLowest,
    Color? surfaceContainerLow,
    Color? surfaceContainer,
    Color? surfaceContainerHigh,
    Color? surfaceContainerHighest,
    Color? onSurfaceVariant,
    Color? inverseSurface,
    Color? inverseOnSurface,
    Color? outlineVariant,
    Color? primaryContainer,
    Color? onPrimaryContainer,
    Color? secondaryContainer,
    Color? onSecondaryContainer,
    Color? tertiary,
    Color? onTertiary,
    Color? tertiaryContainer,
    Color? onTertiaryContainer,
    Color? errorContainer,
    Color? onErrorContainer,
    Color? softMint,
    Color? warmAmber,
    Color? primaryFixed,
    Color? primaryFixedDim,
    Color? onPrimaryFixed,
    Color? onPrimaryFixedVariant,
    Color? secondaryFixed,
    Color? secondaryFixedDim,
    Color? onSecondaryFixed,
    Color? onSecondaryFixedVariant,
    Color? tertiaryFixed,
    Color? tertiaryFixedDim,
    Color? onTertiaryFixed,
    Color? onTertiaryFixedVariant,
    double? spaceXxs,
    double? spaceXs,
    double? spaceSm,
    double? spaceMd,
    double? spaceLg,
    double? spaceXl,
    double? gutter,
    double? marginMobile,
    double? marginDesktop,
    TextStyle? headlineLgMobile,
    BoxShadow? ambientShadow,
    double? glassBlur,
  }) {
    return VividPresenceThemeExtension(
      surfaceDim: surfaceDim ?? this.surfaceDim,
      surfaceBright: surfaceBright ?? this.surfaceBright,
      surfaceContainerLowest:
          surfaceContainerLowest ?? this.surfaceContainerLowest,
      surfaceContainerLow: surfaceContainerLow ?? this.surfaceContainerLow,
      surfaceContainer: surfaceContainer ?? this.surfaceContainer,
      surfaceContainerHigh: surfaceContainerHigh ?? this.surfaceContainerHigh,
      surfaceContainerHighest:
          surfaceContainerHighest ?? this.surfaceContainerHighest,
      onSurfaceVariant: onSurfaceVariant ?? this.onSurfaceVariant,
      inverseSurface: inverseSurface ?? this.inverseSurface,
      inverseOnSurface: inverseOnSurface ?? this.inverseOnSurface,
      outlineVariant: outlineVariant ?? this.outlineVariant,
      primaryContainer: primaryContainer ?? this.primaryContainer,
      onPrimaryContainer: onPrimaryContainer ?? this.onPrimaryContainer,
      secondaryContainer: secondaryContainer ?? this.secondaryContainer,
      onSecondaryContainer: onSecondaryContainer ?? this.onSecondaryContainer,
      tertiary: tertiary ?? this.tertiary,
      onTertiary: onTertiary ?? this.onTertiary,
      tertiaryContainer: tertiaryContainer ?? this.tertiaryContainer,
      onTertiaryContainer: onTertiaryContainer ?? this.onTertiaryContainer,
      errorContainer: errorContainer ?? this.errorContainer,
      onErrorContainer: onErrorContainer ?? this.onErrorContainer,
      softMint: softMint ?? this.softMint,
      warmAmber: warmAmber ?? this.warmAmber,
      primaryFixed: primaryFixed ?? this.primaryFixed,
      primaryFixedDim: primaryFixedDim ?? this.primaryFixedDim,
      onPrimaryFixed: onPrimaryFixed ?? this.onPrimaryFixed,
      onPrimaryFixedVariant:
          onPrimaryFixedVariant ?? this.onPrimaryFixedVariant,
      secondaryFixed: secondaryFixed ?? this.secondaryFixed,
      secondaryFixedDim: secondaryFixedDim ?? this.secondaryFixedDim,
      onSecondaryFixed: onSecondaryFixed ?? this.onSecondaryFixed,
      onSecondaryFixedVariant:
          onSecondaryFixedVariant ?? this.onSecondaryFixedVariant,
      tertiaryFixed: tertiaryFixed ?? this.tertiaryFixed,
      tertiaryFixedDim: tertiaryFixedDim ?? this.tertiaryFixedDim,
      onTertiaryFixed: onTertiaryFixed ?? this.onTertiaryFixed,
      onTertiaryFixedVariant:
          onTertiaryFixedVariant ?? this.onTertiaryFixedVariant,
      spaceXxs: spaceXxs ?? this.spaceXxs,
      spaceXs: spaceXs ?? this.spaceXs,
      spaceSm: spaceSm ?? this.spaceSm,
      spaceMd: spaceMd ?? this.spaceMd,
      spaceLg: spaceLg ?? this.spaceLg,
      spaceXl: spaceXl ?? this.spaceXl,
      gutter: gutter ?? this.gutter,
      marginMobile: marginMobile ?? this.marginMobile,
      marginDesktop: marginDesktop ?? this.marginDesktop,
      headlineLgMobile: headlineLgMobile ?? this.headlineLgMobile,
      ambientShadow: ambientShadow ?? this.ambientShadow,
      glassBlur: glassBlur ?? this.glassBlur,
    );
  }

  @override
  VividPresenceThemeExtension lerp(
    ThemeExtension<VividPresenceThemeExtension>? other,
    double t,
  ) {
    if (other is! VividPresenceThemeExtension) return this;
    return VividPresenceThemeExtension(
      surfaceDim: Color.lerp(surfaceDim, other.surfaceDim, t)!,
      surfaceBright: Color.lerp(surfaceBright, other.surfaceBright, t)!,
      surfaceContainerLowest: Color.lerp(
        surfaceContainerLowest,
        other.surfaceContainerLowest,
        t,
      )!,
      surfaceContainerLow: Color.lerp(
        surfaceContainerLow,
        other.surfaceContainerLow,
        t,
      )!,
      surfaceContainer: Color.lerp(
        surfaceContainer,
        other.surfaceContainer,
        t,
      )!,
      surfaceContainerHigh: Color.lerp(
        surfaceContainerHigh,
        other.surfaceContainerHigh,
        t,
      )!,
      surfaceContainerHighest: Color.lerp(
        surfaceContainerHighest,
        other.surfaceContainerHighest,
        t,
      )!,
      onSurfaceVariant: Color.lerp(
        onSurfaceVariant,
        other.onSurfaceVariant,
        t,
      )!,
      inverseSurface: Color.lerp(inverseSurface, other.inverseSurface, t)!,
      inverseOnSurface: Color.lerp(
        inverseOnSurface,
        other.inverseOnSurface,
        t,
      )!,
      outlineVariant: Color.lerp(outlineVariant, other.outlineVariant, t)!,
      primaryContainer: Color.lerp(
        primaryContainer,
        other.primaryContainer,
        t,
      )!,
      onPrimaryContainer: Color.lerp(
        onPrimaryContainer,
        other.onPrimaryContainer,
        t,
      )!,
      secondaryContainer: Color.lerp(
        secondaryContainer,
        other.secondaryContainer,
        t,
      )!,
      onSecondaryContainer: Color.lerp(
        onSecondaryContainer,
        other.onSecondaryContainer,
        t,
      )!,
      tertiary: Color.lerp(tertiary, other.tertiary, t)!,
      onTertiary: Color.lerp(onTertiary, other.onTertiary, t)!,
      tertiaryContainer: Color.lerp(
        tertiaryContainer,
        other.tertiaryContainer,
        t,
      )!,
      onTertiaryContainer: Color.lerp(
        onTertiaryContainer,
        other.onTertiaryContainer,
        t,
      )!,
      errorContainer: Color.lerp(errorContainer, other.errorContainer, t)!,
      onErrorContainer: Color.lerp(
        onErrorContainer,
        other.onErrorContainer,
        t,
      )!,
      softMint: Color.lerp(softMint, other.softMint, t)!,
      warmAmber: Color.lerp(warmAmber, other.warmAmber, t)!,
      primaryFixed: Color.lerp(primaryFixed, other.primaryFixed, t)!,
      primaryFixedDim: Color.lerp(primaryFixedDim, other.primaryFixedDim, t)!,
      onPrimaryFixed: Color.lerp(onPrimaryFixed, other.onPrimaryFixed, t)!,
      onPrimaryFixedVariant: Color.lerp(
        onPrimaryFixedVariant,
        other.onPrimaryFixedVariant,
        t,
      )!,
      secondaryFixed: Color.lerp(secondaryFixed, other.secondaryFixed, t)!,
      secondaryFixedDim: Color.lerp(
        secondaryFixedDim,
        other.secondaryFixedDim,
        t,
      )!,
      onSecondaryFixed: Color.lerp(
        onSecondaryFixed,
        other.onSecondaryFixed,
        t,
      )!,
      onSecondaryFixedVariant: Color.lerp(
        onSecondaryFixedVariant,
        other.onSecondaryFixedVariant,
        t,
      )!,
      tertiaryFixed: Color.lerp(tertiaryFixed, other.tertiaryFixed, t)!,
      tertiaryFixedDim: Color.lerp(
        tertiaryFixedDim,
        other.tertiaryFixedDim,
        t,
      )!,
      onTertiaryFixed: Color.lerp(onTertiaryFixed, other.onTertiaryFixed, t)!,
      onTertiaryFixedVariant: Color.lerp(
        onTertiaryFixedVariant,
        other.onTertiaryFixedVariant,
        t,
      )!,
      spaceXxs: lerpDouble(spaceXxs, other.spaceXxs, t)!,
      spaceXs: lerpDouble(spaceXs, other.spaceXs, t)!,
      spaceSm: lerpDouble(spaceSm, other.spaceSm, t)!,
      spaceMd: lerpDouble(spaceMd, other.spaceMd, t)!,
      spaceLg: lerpDouble(spaceLg, other.spaceLg, t)!,
      spaceXl: lerpDouble(spaceXl, other.spaceXl, t)!,
      gutter: lerpDouble(gutter, other.gutter, t)!,
      marginMobile: lerpDouble(marginMobile, other.marginMobile, t)!,
      marginDesktop: lerpDouble(marginDesktop, other.marginDesktop, t)!,
      headlineLgMobile: TextStyle.lerp(
        headlineLgMobile,
        other.headlineLgMobile,
        t,
      )!,
      ambientShadow: BoxShadow.lerp(ambientShadow, other.ambientShadow, t)!,
      glassBlur: lerpDouble(glassBlur, other.glassBlur, t)!,
    );
  }
}

/// Main Theme Data Provider for Vivid Presence
class VividPresenceTheme {
  // Prevent instantiation
  VividPresenceTheme._();

  static const String _fontFamily = 'NotoSans';

  static ThemeData get lightTheme {
    // 1. Color Scheme Definition
    const colorScheme = ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xFF0058BE),
      onPrimary: Color(0xFFFFFFFF),
      primaryContainer: Color(0xFF2170E4),
      onPrimaryContainer: Color(0xFFFEFCFF),
      secondary: Color(0xFF006C49),
      onSecondary: Color(0xFFFFFFFF),
      secondaryContainer: Color(0xFF6CF8BB),
      onSecondaryContainer: Color(0xFF00714D),
      tertiary: Color(0xFF825100),
      onTertiary: Color(0xFFFFFFFF),
      tertiaryContainer: Color(0xFFA36700),
      onTertiaryContainer: Color(0xFFFFFBFF),
      error: Color(0xFFBA1A1A),
      onError: Color(0xFFFFFFFF),
      errorContainer: Color(0xFFFFDAD6),
      onErrorContainer: Color(0xFF93000A),
      surface: Color(
        0xFFFFFFFF,
      ), // Overridden to pure white as specified in theme guide
      onSurface: Color(0xFF111827), // Overridden to high-contrast dark gray
      surfaceContainerHighest: Color(0xFFDCE2F3),
      onSurfaceVariant: Color(0xFF6B7280), // Medium-gray for metadata/secondary
      outline: Color(0xFF727785),
      outlineVariant: Color(0xFFC2C6D6),
      inverseSurface: Color(0xFF2A313D),
      onInverseSurface: Color(0xFFEBF1FF),
      inversePrimary: Color(0xFFADC6FF),
      shadow: Color(0x0D000000), // 5% black ambient shadow
    );

    // 2. Typography Mapping
    const textTheme = TextTheme(
      displayLarge: TextStyle(
        fontFamily: _fontFamily,
        fontSize: 32,
        fontWeight: FontWeight.w700,
        height: 40 / 32,
        letterSpacing: -0.64, // -0.02em * 32
        color: Color(0xFF111827),
      ),
      headlineMedium: TextStyle(
        fontFamily: _fontFamily,
        fontSize: 24,
        fontWeight: FontWeight.w600,
        height: 32 / 24,
        letterSpacing: -0.24, // -0.01em * 24
        color: Color(0xFF111827),
      ),
      headlineSmall: TextStyle(
        fontFamily: _fontFamily,
        fontSize: 20,
        fontWeight: FontWeight.w600,
        height: 28 / 20,
        color: Color(0xFF111827),
      ),
      bodyLarge: TextStyle(
        fontFamily: _fontFamily,
        fontSize: 16,
        fontWeight: FontWeight.w400,
        height: 24 / 16,
        color: Color(0xFF111827),
      ),
      bodyMedium: TextStyle(
        fontFamily: _fontFamily,
        fontSize: 14,
        fontWeight: FontWeight.w400,
        height: 20 / 14,
        color: Color(0xFF6B7280),
      ),
      bodySmall: TextStyle(
        fontFamily: _fontFamily,
        fontSize: 13,
        fontWeight: FontWeight.w400,
        height: 18 / 13,
        color: Color(0xFF6B7280),
      ),
      labelMedium: TextStyle(
        fontFamily: _fontFamily,
        fontSize: 12,
        fontWeight: FontWeight.w600,
        height: 16 / 12,
        letterSpacing: 0.60, // 0.05em * 12
        color: Color(0xFF111827),
      ),
      labelSmall: TextStyle(
        fontFamily: _fontFamily,
        fontSize: 11,
        fontWeight: FontWeight.w500,
        height: 14 / 11,
        color: Color(0xFF6B7280),
      ),
    );

    // 3. System Theme Assembly
    return ThemeData(
      useMaterial3: true,
      colorScheme: colorScheme,
      textTheme: textTheme,
      scaffoldBackgroundColor: colorScheme.surface,

      // Card Theme
      cardTheme: CardThemeData(
        color: colorScheme.surface,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16), // rounded-lg
          side: BorderSide(color: colorScheme.outlineVariant, width: 1),
        ),
        margin: EdgeInsets.zero,
      ),

      // Input Decoration (Search & Message Inputs)
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: const Color(0xFFF9FAFB),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 12,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(24), // rounded-xl (1.5rem)
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(24),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(24),
          borderSide: BorderSide(color: colorScheme.primary, width: 1.5),
        ),
        hintStyle: textTheme.bodyMedium,
      ),

      // Button Themes
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colorScheme.primary,
          foregroundColor: colorScheme.onPrimary,
          elevation: 0,
          textStyle: textTheme.labelMedium?.copyWith(
            fontWeight: FontWeight.w600,
          ),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8), // rounded-DEFAULT (0.5rem)
          ),
        ),
      ),

      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: colorScheme.primary,
          side: BorderSide(color: colorScheme.outline),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
      ),

      // Chip Theme (Unread Count & Online Status)
      chipTheme: ChipThemeData(
        backgroundColor: colorScheme.primary,
        labelStyle: textTheme.labelSmall?.copyWith(
          color: colorScheme.onPrimary,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
        shape: const StadiumBorder(),
        side: BorderSide.none,
      ),

      // Custom Theme Extensions
      extensions: <ThemeExtension<dynamic>>[
        VividPresenceThemeExtension(
          surfaceDim: const Color(0xFFD3DAEA),
          surfaceBright: const Color(0xFFF9F9FF),
          surfaceContainerLowest: const Color(0xFFFFFFFF),
          surfaceContainerLow: const Color(0xFFF0F3FF),
          surfaceContainer: const Color(0xFFE7EEFE),
          surfaceContainerHigh: const Color(0xFFE2E8F8),
          surfaceContainerHighest: const Color(0xFFDCE2F3),
          onSurfaceVariant: const Color(0xFF424754),
          inverseSurface: const Color(0xFF2A313D),
          inverseOnSurface: const Color(0xFFEBF1FF),
          outlineVariant: const Color(0xFFC2C6D6),
          primaryContainer: const Color(0xFF2170E4),
          onPrimaryContainer: const Color(0xFFFEFCFF),
          secondaryContainer: const Color(0xFF6CF8BB),
          onSecondaryContainer: const Color(0xFF00714D),
          tertiary: const Color(0xFF825100),
          onTertiary: const Color(0xFFFFFFFF),
          tertiaryContainer: const Color(0xFFA36700),
          onTertiaryContainer: const Color(0xFFFFFBFF),
          errorContainer: const Color(0xFFFFDAD6),
          onErrorContainer: const Color(0xFF93000A),
          softMint: const Color(0xFF6CF8BB),
          warmAmber: const Color(0xFFF59E0B),
          primaryFixed: const Color(0xFFD8E2FF),
          primaryFixedDim: const Color(0xFFADC6FF),
          onPrimaryFixed: const Color(0xFF001A42),
          onPrimaryFixedVariant: const Color(0xFF004395),
          secondaryFixed: const Color(0xFF6FFBBE),
          secondaryFixedDim: const Color(0xFF4EDEA3),
          onSecondaryFixed: const Color(0xFF002113),
          onSecondaryFixedVariant: const Color(0xFF005236),
          tertiaryFixed: const Color(0xFFFFDDB8),
          tertiaryFixedDim: const Color(0xFFFFB95F),
          onTertiaryFixed: const Color(0xFF2A1700),
          onTertiaryFixedVariant: const Color(0xFF653E00),
          spaceXxs: 4.0, // 0.25rem
          spaceXs: 8.0, // 0.5rem
          spaceSm: 12.0, // 0.75rem
          spaceMd: 16.0, // 1.0rem
          spaceLg: 24.0, // 1.5rem
          spaceXl: 32.0, // 2.0rem
          gutter: 16.0,
          marginMobile: 16.0,
          marginDesktop: 40.0, // 2.5rem
          headlineLgMobile: const TextStyle(
            fontFamily: _fontFamily,
            fontSize: 28,
            fontWeight: FontWeight.w700,
            height: 36 / 28,
            color: Color(0xFF111827),
          ),
          ambientShadow: const BoxShadow(
            color: Color(0x0D000000), // rgba(0, 0, 0, 0.05)
            offset: Offset(0, 4),
            blurRadius: 20,
            spreadRadius: 0,
          ),
          glassBlur: 12.0,
        ),
      ],
    );
  }
}
