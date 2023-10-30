import 'package:flutter/material.dart';
import 'package:test_form/core/domain/models/address/address.dart';
import 'package:test_form/ordering/widgets/address_field.dart';

class AddressInfo extends StatefulWidget {
  const AddressInfo({super.key, required this.address});
  final Address address;

  @override
  State<AddressInfo> createState() => _AddressInfoState();
}

class _AddressInfoState extends State<AddressInfo> {
  final List<String> startAdresses = List.empty(growable: true);

  @override
  void initState() {
    startAdresses.addAll(widget.address.adressLine);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // if (mode == DetailsMode.add) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const AddressField(
          title: 'Full name*',
          icon: Icons.person,
        ),
        const AddressField(title: 'Email*', icon: Icons.email),
        const AddressField(
          title: 'Phone*',
          icon: Icons.phone,
        ),
        const Divider(),
        const AddressField(
          title: 'Country*',
          icon: Icons.location_on_rounded,
        ),
        const AddressField(
          title: 'City*',
          icon: Icons.location_city_outlined,
        ),
        for (int i = 0; i < startAdresses.length; i++) ...[
          AddressField(
            title: 'Address line ${i + 1}*',
            icon: Icons.nature,
          ),
        ],
        TextButton(
            onPressed: () {
              setState(() {
                startAdresses.add('');
              });
            },
            child: const Text('Add address line +')),
        const AddressField(
          title: 'Postcode*',
          icon: Icons.indeterminate_check_box,
        ),
      ],
    );
    // } else{
    //     return Column(children: [Text('aaaa')],);
    // }
  }
}
