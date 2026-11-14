import 'package:material_ui/material_ui.dart';
import 'app/workshop_app.dart';
import 'package:intl/date_symbol_data_local.dart';

Future<void> main() async {
  await initializeDateFormatting();
  runApp(const WorkshopApp());
}

