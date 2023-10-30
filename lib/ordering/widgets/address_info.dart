import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_form/core/domain/models/address/address.dart';
import 'package:test_form/ordering/controllers/mode_controller.dart';
import 'package:test_form/ordering/utils/constants.dart';
import 'package:test_form/ordering/utils/enums.dart';
import 'package:test_form/ordering/widgets/address_field.dart';
import 'package:test_form/ordering/widgets/short_address_info.dart';

class AddressInfo extends ConsumerStatefulWidget {
  const AddressInfo({super.key, required this.address, required this.isSender});
  final Address address;
  final bool isSender;

  @override
  ConsumerState<AddressInfo> createState() => _AddressInfoState();
}

class _AddressInfoState extends ConsumerState<AddressInfo> {
  final List<String> startAdresses = List.empty(growable: true);

  @override
  void initState() {
    startAdresses.addAll(widget.address.adressLine);
    super.initState();
  }

  @override
  Widget build(
    BuildContext context,
  ) {
    late final DetailsMode state;
    if (widget.isSender) {
      state = ref.watch(senderModeProvider);
    } else {
      state = ref.watch(recepientModeProvider);
    }

    if (state == DetailsMode.add) {
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
    } else {
      List<Address> tempList;
      if (widget.isSender) {
        tempList = senderAddresses;
      } else {
        tempList = recepientAddresses;
      }
      return Column(
        children: [
          for (var elem in tempList) ...[ShortAddressCard(address: elem)]
        ],
      );
    }
  }
}
