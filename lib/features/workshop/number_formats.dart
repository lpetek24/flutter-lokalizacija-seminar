import 'package:intl/intl.dart';
import 'package:material_ui/material_ui.dart';
import '../../l10n/app_localizations.dart';

class NumberFormats extends StatelessWidget{
  const NumberFormats({super.key});

  @override
  Widget build(BuildContext context){
    final messages = AppLocalizations.of(context)!;
    final locale = Localizations.localeOf(context).toLanguageTag();
    final textTheme = Theme.of(context).textTheme;
    const sample = 1250.67;
    final number = NumberFormat.decimalPattern(locale).format(sample);
    final amount = NumberFormat.currency(
      locale: locale,
      name: 'EUR',
      symbol: '€',
    ).format(sample);

    return Card(
      margin: EdgeInsets.zero,
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(messages.numberFormatsTitle, style: textTheme.titleMedium),
            const SizedBox(height: 12),
            Text(messages.numberLabel, style: textTheme.labelLarge),
            Text(number, style: textTheme.headlineSmall),
            const SizedBox(height: 16),
            Text(messages.currencyLabel, style: textTheme.labelLarge),
            Text(amount, style: textTheme.headlineSmall),
          ],
        ),
      ),
    );
  }
}