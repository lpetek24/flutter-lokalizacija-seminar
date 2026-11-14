import 'package:material_ui/material_ui.dart';
import '../../l10n/app_localizations.dart';

class WorkshopPage extends StatelessWidget{
  const WorkshopPage({super.key, required this.onLocaleChanged});

  final ValueChanged<Locale> onLocaleChanged;

  @override
  Widget build(BuildContext context){
    final theme = Theme.of(context);
    final colors = theme.colorScheme;
    final messages = AppLocalizations.of(context)!;
    final locale = Localizations.localeOf(context);

    final now = DateTime.now();
    final formats = MaterialLocalizations.of(context);
    final date = formats.formatShortDate(now);
    final time = formats.formatTimeOfDay(TimeOfDay.fromDateTime(now));

    return Scaffold(
      backgroundColor: colors.surfaceContainerLowest,
      appBar: AppBar(
        backgroundColor: colors.surfaceContainerLowest,
        title: Text(messages.title),
      ),
      body: ListView(
        padding: const EdgeInsets.all(24),
        children: [
          Text(messages.languageLabel, style: theme.textTheme.labelLarge),
          DropdownButton<Locale>(
            value: locale,
            isExpanded: true,
            items: const[
              DropdownMenuItem(
                value: Locale('en'),
                child: Text('English'),
              ),
              DropdownMenuItem(
                value: Locale('hr'),
                child: Text('Hrvatski'),
              ),
              DropdownMenuItem(
                value: Locale('es'),
                child: Text('Español'),
              ),
            ],
            onChanged: (selected){
              if(selected != null){
                onLocaleChanged(selected);
              }
            },
          ),
          const SizedBox(height: 24),
          Card(
            margin: EdgeInsets.zero,
            color: colors.primaryContainer,
            elevation: 0,
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(messages.dateLabel, style: theme.textTheme.labelLarge),
                  const SizedBox(height: 4),
                  Text(date, style: theme.textTheme.headlineMedium),
                  const SizedBox(height: 24),
                  Text(messages.timeLabel , style: theme.textTheme.labelLarge),
                  const SizedBox(height: 4),
                  Text(time, style: theme.textTheme.headlineMedium),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}