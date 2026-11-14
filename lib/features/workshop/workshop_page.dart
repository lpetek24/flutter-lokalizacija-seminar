import 'package:material_ui/material_ui.dart';

class WorkshopPage extends StatelessWidget{
  const WorkshopPage({super.key});

  @override
  Widget build(BuildContext context){
    final theme = Theme.of(context);
    final colors = theme.colorScheme;

    final now = DateTime.now();
    final formats = MaterialLocalizations.of(context);
    final date = formats.formatShortDate(now);
    final time = formats.formatTimeOfDay(TimeOfDay.fromDateTime(now));

    return Scaffold(
      backgroundColor: colors.surfaceContainerLowest,
      appBar: AppBar(
        backgroundColor: colors.surfaceContainerLowest,
        title: const Text('Local date and time'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(24),
        children: [
          Card(
            margin: EdgeInsets.zero,
            color: colors.primaryContainer,
            elevation: 0,
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Date', style: theme.textTheme.labelLarge),
                  const SizedBox(height: 4),
                  Text(date, style: theme.textTheme.headlineMedium),
                  const SizedBox(height: 24),
                  Text('Time', style: theme.textTheme.labelLarge),
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