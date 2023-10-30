import 'package:flutter/material.dart';
import 'package:test_form/core/domain/models/address/address.dart';

const TextStyle textStyle = TextStyle(color: Colors.white);

class ShortAddressCard extends StatelessWidget {
  const ShortAddressCard({
    super.key,
    required this.address,
  });
  final Address address;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      color: Colors.black,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                address.fullName,
                style: textStyle.copyWith(fontWeight: FontWeight.w700),
              ),
              for (var elem in address.adressLine) ...[
                Text(
                  '${address.country}, ${address.city}, $elem',
                  style: textStyle,
                ),
              ]
            ]),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.edit,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
