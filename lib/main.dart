import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// import 'core/routes/app_roters.dart';
// import 'core/routes/routing.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
        textTheme: GoogleFonts.interTextTheme()
      ),
      // onGenerateRoute: AppRouters.generateRoute,
      // debugShowCheckedModeBanner: false,
      // initialRoute: Routing.init,
      
    );
  }
}
