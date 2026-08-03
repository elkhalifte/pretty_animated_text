import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'core/constants.dart';
import 'home_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Preload demo fonts so the first frame of the Scale demo (and any other
  // effect using these styles) renders with the correct typeface instead of
  // the fallback while google_fonts fetches in the background.
  await GoogleFonts.pendingFonts([
    GoogleFonts.comicNeue(fontWeight: FontWeight.w900),
    GoogleFonts.plusJakartaSans(),
  ]);

  runApp(const PrettyAnimatedTextApp());
}

class PrettyAnimatedTextApp extends StatefulWidget {
  const PrettyAnimatedTextApp({super.key});

  @override
  State<PrettyAnimatedTextApp> createState() => _PrettyAnimatedTextAppState();
}

class _PrettyAnimatedTextAppState extends State<PrettyAnimatedTextApp> {
  ThemeMode _themeMode = ThemeMode.light;

  void _toggleTheme() {
    setState(() {
      _themeMode =
          _themeMode == ThemeMode.dark ? ThemeMode.light : ThemeMode.dark;
    });
  }

  ThemeData _theme(Brightness brightness) {
    final isDark = brightness == Brightness.dark;
    return ThemeData(
      colorScheme: ColorScheme.fromSeed(
        seedColor: kBrandIndigo,
        brightness: brightness,
        surface: isDark ? const Color(0xFF1A1830) : const Color(0xFFF8FAFC),
      ),
      textTheme: GoogleFonts.plusJakartaSansTextTheme(
        isDark ? ThemeData.dark().textTheme : ThemeData.light().textTheme,
      ),
      scaffoldBackgroundColor: Colors.transparent,
      useMaterial3: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pretty Animated Text',
      debugShowCheckedModeBanner: false,
      theme: _theme(Brightness.light),
      darkTheme: _theme(Brightness.dark),
      themeMode: _themeMode,
      home: _GradientScaffold(onToggleTheme: _toggleTheme),
    );
  }
}

class _GradientScaffold extends StatelessWidget {
  final VoidCallback onToggleTheme;
  const _GradientScaffold({required this.onToggleTheme});

  @override
  Widget build(BuildContext context) {
    final brightness = Theme.of(context).brightness;
    return Stack(
      children: [
        Positioned.fill(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: backgroundGradient(brightness),
                stops: const [0.0, 0.5, 1.0],
              ),
            ),
          ),
        ),
        HomeWidget(onToggleTheme: onToggleTheme),
      ],
    );
  }
}
