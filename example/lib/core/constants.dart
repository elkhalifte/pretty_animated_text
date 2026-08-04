import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// Demo Content
const demoText = 'Bring motion to your text. Keep your UI elegant!';

final demoTextStyle = GoogleFonts.comicNeue(
  fontSize: 52,
  fontWeight: FontWeight.w900,
  color: kDemoTextColorLight,
  height: 1.2,
  letterSpacing: -0.5,
);

/// Demo text style with a color that adapts to the current theme brightness.
TextStyle demoTextStyleOf(BuildContext context) => demoTextStyle.copyWith(
      color: demoTextColor(Theme.of(context).brightness),
    );

// Letter animation durations (slow / medium / fast)
const letterDurationSlow = Duration(milliseconds: 600);
const letterDurationMedium = Duration(milliseconds: 300);
const letterDurationFast = Duration(milliseconds: 150);

// Word animation durations (slow / medium / fast)
const wordDurationSlow = Duration(milliseconds: 1200);
const wordDurationMedium = Duration(milliseconds: 600);
const wordDurationFast = Duration(milliseconds: 300);

// Indexed for lookup by speed index (0=slow, 1=medium, 2=fast)
const letterDurations = [
  letterDurationSlow,
  letterDurationMedium,
  letterDurationFast
];
const wordDurations = [wordDurationSlow, wordDurationMedium, wordDurationFast];

// Kept for backwards compatibility with demo widget defaults
const letterAnimationDuration = letterDurationMedium;
const wordAnimationDuration = wordDurationMedium;

// Primary Color
const kBrandIndigo = Color(0xFF6366F1);

// Background Gradient
const kBgGradientTop = Color(0xFFEEF0FF);
const kBgGradientBottom = Color(0xFFF8FAFC);

// Demo Canvas Gradient
const kCanvasGradientA = Color(0xFFF0F1FF);
const kCanvasGradientB = Color(0xFFFAFAFF);

// Status chip - semantic colors
const kStatusPlaying = Color(0xFF10B981);
const kStatusPaused = Color(0xFFF59E0B);
const kStatusComplete = Color(0xFF6366F1);
const kStatusStopped = Color(0xFF94A3B8);

const kStatusPlayingBg = Color(0xFFD1FAE5);
const kStatusPausedBg = Color(0xFFFEF3C7);
const kStatusCompleteBg = Color(0xFFEEF0FF);
const kStatusStoppedBg = Color(0xFFF1F5F9);

// Shadows
const kCardShadows = [
  BoxShadow(
    color: Color(0x0F6366F1),
    blurRadius: 40,
    offset: Offset(0, 8),
  ),
  BoxShadow(
    color: Color(0x0A000000),
    blurRadius: 12,
    offset: Offset(0, 2),
  ),
];

const kNavSelectedShadows = [
  BoxShadow(
    color: Color(0x266366F1),
    blurRadius: 12,
    offset: Offset(0, 2),
  ),
];

const kControlPillShadows = [
  BoxShadow(
    color: Color(0x0F000000),
    blurRadius: 16,
    offset: Offset(0, 4),
  ),
];

const kPlayButtonShadows = [
  BoxShadow(
    color: Color(0x596366F1),
    blurRadius: 16,
    offset: Offset(0, 4),
  ),
];

const kPlayButtonPressedShadows = [
  BoxShadow(
    color: Color(0x336366F1),
    blurRadius: 8,
    offset: Offset(0, 2),
  ),
];

// ── Dark theme palette ───────────────────────────────────────────────────
const kBgGradientTopDark = Color(0xFF1A1730);
const kBgGradientBottomDark = Color(0xFF100E1C);

const kCanvasGradientADark = Color(0xFF17162A);
const kCanvasGradientBDark = Color(0xFF100F1C);

const kSurfaceDark = Color(0xFF201E33);

const kDemoTextColorLight = Color(0xFF1E293B);
const kDemoTextColorDark = Color(0xFFF1F5F9);

// ── Theme-aware helpers ──────────────────────────────────────────────────
/// Card / pill surface color for the given [brightness].
Color surfaceColor(Brightness brightness) =>
    brightness == Brightness.dark ? kSurfaceDark : Colors.white;

/// Page background gradient stops for the given [brightness].
List<Color> backgroundGradient(Brightness brightness) =>
    brightness == Brightness.dark
        ? const [kBgGradientTopDark, kBgGradientBottomDark, kBgGradientTopDark]
        : const [kBgGradientTop, kBgGradientBottom, kBgGradientTop];

/// Animation canvas gradient stops for the given [brightness].
List<Color> canvasGradient(Brightness brightness) =>
    brightness == Brightness.dark
        ? const [kCanvasGradientADark, kCanvasGradientBDark, kCanvasGradientADark]
        : const [kCanvasGradientA, kCanvasGradientB, kCanvasGradientA];

/// Demo text color for the given [brightness].
Color demoTextColor(Brightness brightness) =>
    brightness == Brightness.dark ? kDemoTextColorDark : kDemoTextColorLight;

// Navigation icons
const kDemoIcons = <String, IconData>{
  'Scale': Icons.zoom_in_map_rounded,
  'Slide': Icons.swap_horiz_rounded,
  'Rotate': Icons.rotate_right_rounded,
  'Chime Bell': Icons.notifications_rounded,
  'Spring': Icons.directions_run_rounded,
  'Blur': Icons.blur_on_rounded,
  'Scramble': Icons.shuffle_rounded,
  'Glitch': Icons.bolt_rounded,
  'Squash Bounce': Icons.compress_rounded,
  'Reveal': Icons.auto_fix_high_rounded,
  'Gravity': Icons.arrow_downward_rounded,
};
