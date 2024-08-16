import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yesnoapp/presentation/providers/chat_provider.dart';
import 'package:yesnoapp/presentation/screens/chat/chat_screen.dart';
import 'config/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ChatProvider() )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppTheme( selectedColor: 4 ).theme(),
        title: 'Flutter Demo',
        home: const ChatScreen(),
      ),
    );
  }
}

