import 'package:ashgar_club_admin_dash/core/widgets/simple_leading.dart';
import 'package:flutter/material.dart';

import '../../../../core/theme/styles.dart';

class CreateOfferScreen extends StatelessWidget {
  const CreateOfferScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const SimpleLeading(),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Offer title
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Offer Title',
                  hintText: 'Enter the Offer title',
                ),
              ),
              //   Offer Description
              TextFormField(
                maxLines: 5,
                decoration: const InputDecoration(
                  labelText: 'Offer Description',
                  hintText: 'Enter the Offer description',
                ),
              ),
              // Offer start date
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Start Date',
                  hintText: 'Select the Start date',
                ),
              ),
              //   Offer end date
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'End Date',
                  hintText: 'Select the End Date',
                ),
              ),
              //   Offer terms and Conditions
              TextFormField(
                maxLines: 10,
                decoration: const InputDecoration(
                  labelText: 'Terms And Conditions',
                  hintText: 'Enter the terms and conditions',
                ),
              ),
              //   Offer Image ( Optional )
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Offer Image URL',
                  hintText: 'Enter The URL of The Offer Image',
                ),
              ),
              //   Create Offer Button
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Create Offer',
                  style: Styles.textStyle6,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
