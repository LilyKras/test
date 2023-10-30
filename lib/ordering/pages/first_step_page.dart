import 'package:flutter/material.dart';
import 'package:test_form/core/domain/models/address/address.dart';
import 'package:test_form/ordering/widgets/address_details.dart';

class FirstStepPage extends StatelessWidget {
  const FirstStepPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title:  const Text('Ordering'),
            pinned: true,
            leading: IconButton(
                onPressed: () {}, icon: const Icon(Icons.arrow_back_ios)),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                 Center(
                    child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Step 1', style: Theme.of(context).textTheme.titleMedium,),
                )),
                const AddressDetails(
                  title: 'Sender details',
                  address: Address(
                    fullName: '',
                    email: '',
                    phoneNumber: '',
                    country: '',
                    city: '',
                    postCode: 0,
                    adressLine: ['a'],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const AddressDetails(
                  title: 'Recepient details',
                  address: Address(
                    fullName: '',
                    email: '',
                    phoneNumber: '',
                    country: '',
                    city: '',
                    postCode: 0,
                    adressLine: ['a'],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: ElevatedButton(
                      onPressed: () {}, child: const Text('Next step')),
                ),
                const SizedBox(
                  height: 30,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
