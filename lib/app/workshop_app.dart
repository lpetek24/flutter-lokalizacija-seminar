import 'package:material_ui/material_ui.dart';
import '../features/workshop/workshop_page.dart';
import '../l10n/app_localizations.dart';

class WorkshopApp extends StatefulWidget {
  const WorkshopApp({super.key});

  @override
  State<WorkshopApp> createState() => _WorkshopAppState();
}

class _WorkshopAppState extends State<WorkshopApp>{
  Locale _locale = const Locale('en');

  @override
  Widget build(BuildContext context){
    return MaterialApp( 
      debugShowCheckedModeBanner: false,
      locale: _locale,
      supportedLocales: AppLocalizations.supportedLocales,
      localizationsDelegates: [
        AppLocalizations.delegate,
        ...GlobalMaterialLocalizations.delegates,
      ],
      onGenerateTitle: (context) => AppLocalizations.of(context)!.title,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF315DA8),
        ),
      ),
      home: WorkshopPage(
        onLocaleChanged: (locale){
          setState(() {
            _locale = locale;
          });
        },
      ),
    );
  }
}
