import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:myproject/theme/my_theme.dart';
import 'package:myproject/theme/theme_provider.dart';
import 'package:provider/provider.dart';
import 'splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: "your-api",
        appId: "your-id",
        messagingSenderId: "xxxxxx",
        projectId: "project-id",
        storageBucket: "your-bucket",
      ),
    );
  } else {
    await Firebase.initializeApp();
  }
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ThemeProvider saveTheme = ThemeProvider();

  void getCurrentTheme() async {
    saveTheme.themedata = await saveTheme.mytheme.gettheme();
  }

  @override
  void initState() {
    getCurrentTheme();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) {
            return saveTheme;
          },
        ),
      ],
      child: Consumer<ThemeProvider>(
        builder: (context, themedata, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: Styles.themeData(themedata.getthemedata, context),
            home: const SplashScreen(),
          );
        },
      ),
    );
  }
}
