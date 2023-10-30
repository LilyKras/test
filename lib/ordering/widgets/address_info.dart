import 'package:flutter/material.dart';
import 'package:test_form/core/domain/models/address/address.dart';
import 'package:test_form/ordering/widgets/address_field.dart';

class AddressInfo extends StatelessWidget {
  const AddressInfo({super.key, required this.address});
  final Address address;

  @override
  Widget build(BuildContext context) {
    // if (mode == DetailsMode.add) {
    return Column(
      children: [
        AddressField(
          title: 'Full name*',
          icon: Icons.person,
          field: address.fullName,
        ),
        AddressField(title: 'Email*', icon: Icons.email, field: address.email),
        AddressField(title: 'Phone*', icon: Icons.phone, field: address.phoneNumber),
        const Divider(),
       AddressField(title: 'Country*', icon: Icons.location_on_rounded,  field: address.country),
        AddressField(title: 'City*', icon: Icons.location_city_outlined, field: address.city),
        AddressField(title: 'Address line 1*', icon: Icons.nature, field: address.adressLine[0]),
        AddressField(
            title: 'Postcode*', icon: Icons.indeterminate_check_box, field: address.postCode.toString()),
      ],
    );
    // } else{
    //     return Column(children: [Text('aaaa')],);
    // }
  }
}
