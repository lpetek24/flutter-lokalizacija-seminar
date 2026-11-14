import 'package:intl/intl.dart';
import 'package:material_ui/material_ui.dart';

class RegionalFormats extends StatelessWidget{
  const RegionalFormats({super.key});

  @override
  Widget build(BuildContext context){
    final sample = DateTime(2027, 4, 7, 17, 30);
    final usFormat = DateFormat.yMd('en_US').add_jm().format(sample);
    final ukFormat = DateFormat.yMd('en_GB').add_jm().format(sample);

    return Card(
      margin: EdgeInsets.zero,
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('en_US', style: Theme.of(context).textTheme.labelLarge),
            Text(usFormat),
            const SizedBox(height: 16),
            Text('en_GB', style: Theme.of(context).textTheme.labelLarge),
            Text(ukFormat)
          ],
        ),
      ),
    );
  }
}