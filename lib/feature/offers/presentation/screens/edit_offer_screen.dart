import 'package:ashgar_club_admin_dash/core/widgets/simple_leading.dart';
import 'package:flutter/material.dart';

class EditOfferScreen extends StatelessWidget {
  const EditOfferScreen({super.key});

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
                initialValue:
                    'Current Offer Title', // Replace it with actual title
                decoration: const InputDecoration(
                  labelText: 'Offer Title',
                  hintText: 'Enter rhe Offer title',
                ),
              ),

              //   ... other Fields for Editing offer Details

              // Update Offer Button
              ElevatedButton(
                onPressed: () {},
                child: const Text('Update Offer'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
