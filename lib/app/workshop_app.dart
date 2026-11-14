import 'package:material_ui/material_ui.dart';
import '../features/workshop/workshop_page.dart';

class WorkshopApp extends StatelessWidget {
  const WorkshopApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF315DA8),
        ),
      ),
      home: const WorkshopPage(),
    );
  }
}