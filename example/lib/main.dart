import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'core/constants.dart';
import 'home_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Preload UI fonts (Figtree, JetBrains Mono) and the animated showcase font
  // (Comic Neue) so the first frame renders with the correct typefaces.
  await GoogleFonts.pendingFonts([
    GoogleFonts.figtree(fontWeight: FontWeight.w400),
    GoogleFonts.figtree(fontWeight: FontWeight.w500),
    GoogleFonts.figtree(fontWeight: FontWeight.w600),
    GoogleFonts.figtree(fontWeight: FontWeight.w700),
    GoogleFonts.jetBrainsMono(fontWeight: FontWeight.w400),
    GoogleFonts.comicNeue(fontWeight: FontWeight.w900),
  ]);

  runApp(const PrettyAnimatedTextApp());
}

class PrettyAnimatedTextApp extends StatelessWidget {
  const PrettyAnimatedTextApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pretty Animated Text',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: dsAccent,
          brightness: Brightness.light,
          surface: dsSurface,
        ),
        scaffoldBackgroundColor: dsSurface,
        textTheme: GoogleFonts.figtreeTextTheme(ThemeData.light().textTheme),
      ),
      home: const HomeWidget(),
    );
  }
}
