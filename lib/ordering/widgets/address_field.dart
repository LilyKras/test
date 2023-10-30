import 'package:flutter/material.dart';
import 'package:test_form/core/domain/models/theme/theme_extensions.dart';

class AddressField extends StatelessWidget {
  const AddressField(
      {super.key, required this.title, this.field, required this.icon});
  final String title;
  final String? field;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: Theme.of(context).textTheme.bodyMedium,),
        Container(
          margin: const EdgeInsets.only(bottom: 10),
          decoration: BoxDecoration(
              border: Border.all(color: Theme.of(context).extension<ThemeColors>()!.roundedBorderColor, width: 0.5), borderRadius: BorderRadius.circular(10), ),
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(icon),
              SizedBox(
                  width: MediaQuery.of(context).size.width - 100,
                  child: TextField(
                    style: Theme.of(context).textTheme.bodySmall,
                    decoration: null,
                  ))
            ],
          ),
        )
      ],
    );
  }
}
