import 'package:flutter/material.dart';
import 'package:test_form/core/domain/models/address/address.dart';
import 'package:test_form/ordering/widgets/address_info.dart';
import 'package:test_form/ordering/widgets/mode_switcher.dart';

class AddressDetails extends StatelessWidget {
  const AddressDetails({super.key, required this.title, required this.address});
  final String title;
  final Address address;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.titleSmall,
          ),
          const ModeSwitcher(),
          AddressInfo(
            address: address,
          ),
        ],
      ),
    );
  }
}
