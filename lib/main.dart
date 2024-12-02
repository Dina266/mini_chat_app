import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mini_chat_app/core/themes/app_colors.dart';
import 'package:mini_chat_app/features/chats/presentation/views/chat_view.dart';
import 'core/routes/app_routers.dart';
import 'core/routes/routing.dart';
import 'firebase_options.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryColor),
        useMaterial3: true,
        textTheme: GoogleFonts.interTextTheme()
      ),
      onGenerateRoute: AppRouters.generateRoute,
      debugShowCheckedModeBanner: false,
      initialRoute: Routing.init,
      // home: ChatsView(),
    );
  }
}
