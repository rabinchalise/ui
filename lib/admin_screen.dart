import 'package:flutter/material.dart';

class PricingScreen extends StatelessWidget {
  const PricingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('KROFILE Pricing'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: Text(
                'Pay Monthly     Pay Upfront\n25% OFF\nCommit annually',
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 20),
            const Center(
              child: Text(
                'Our Satisfaction Guarantee: If you stop seeing value in Krofile, your last month will always be free.',
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 20),
            PricingTable(),
          ],
        ),
      ),
    );
  }
}

class PricingTable extends StatelessWidget {
  final List<String> features = [
    'No of users',
    'Unlimited short links',
    'Digital washroom feedback',
    'Offer wheels',
    'Customer feedback form',
    '50 Additional external short links with Visitors Analytics',
    'Custom SEO optimization',
    'Custom Integration',
    'Dedicated Account Manager',
    'Admin training',
  ];

  final List<List<String>> plans = [
    ['Standard', '49.99', '1', 'Yes', 'No', 'No', 'No', 'No', 'No', 'No', 'No'],
    [
      'Upgraded',
      '79.99',
      'Unlimited',
      'Yes',
      'Yes',
      'Yes',
      'Yes',
      'Yes',
      'Yes',
      'No',
      'No'
    ],
    [
      'Premium',
      '150',
      'Unlimited',
      'Yes',
      'Yes',
      'Yes',
      'Yes',
      'Yes',
      'Yes',
      'Yes',
      'Yes'
    ],
    [
      'Enterprise',
      'Contact Us',
      'Unlimited',
      'Yes',
      'Yes',
      'Yes',
      'Yes',
      'Yes',
      'Yes',
      'Yes',
      'Yes'
    ],
  ];

  PricingTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      border: TableBorder.all(),
      children: [
        TableRow(
          children: plans.map((plan) {
            return Container(
              padding: const EdgeInsets.all(8.0),
              color: plan[0] == 'Upgraded' ? Colors.green[100] : Colors.white,
              child: Column(
                children: [
                  Text(
                    plan[0],
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                      plan[1] != 'Contact Us' ? '\$${plan[1]}/month' : plan[1]),
                  const SizedBox(height: 10),
                  TextButton(
                    child: Text(plan[1] != 'Contact Us'
                        ? 'Try for free'
                        : 'Contact Us'),
                    onPressed: () {},
                  ),
                ],
              ),
            );
          }).toList(),
        ),
        TableRow(
          children: plans.map((plan) {
            return Container(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text(plan[2]), // 'No of users'
              ),
            );
          }).toList(),
        ),
        ...features.skip(1).map((feature) {
          int index = features.indexOf(feature) + 2;
          return TableRow(
            children: plans.map((plan) {
              return Container(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text(plan.length > index
                      ? (plan[index] == 'Yes' ? '✔️' : '❌')
                      : '❌'),
                ),
              );
            }).toList(),
          );
        }),
      ],
    );
  }
}
