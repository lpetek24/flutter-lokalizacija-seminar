import 'package:material_ui/material_ui.dart';
import '../../l10n/app_localizations.dart';

class PluralExamples extends StatelessWidget{
  const PluralExamples({super.key});

  @override
  Widget build(BuildContext context){
    final messages = AppLocalizations.of(context)!;
    final textTheme = Theme.of(context).textTheme;
    const counts  = [1, 2, 5, 21];

    return Card(
      margin: EdgeInsets.zero,
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(messages.pluralTitle, style: textTheme.titleMedium),
            const SizedBox(height: 12),
            Table(
              columnWidths: const{
                0: FixedColumnWidth(48),
                1: FlexColumnWidth(),
              },
              children: [
                for(final count in counts)
                  TableRow(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 6),
                        child: Text('$count', style: textTheme.labelLarge),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 6),
                        child: Text(messages.participantCount(count)),
                      ),
                    ],
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}