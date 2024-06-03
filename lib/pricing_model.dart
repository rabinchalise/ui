class PricingModel {
  final String title;
  final String price;
  final List<String> values;
  PricingModel(
      {required this.title, required this.price, required this.values});
}

List<PricingModel> pricing = [
  PricingModel(
    title: 'Standard',
    price: '49.99',
    values: [
      '1',
      'Yes',
      'No',
      'No',
      'No',
      'No',
      'No',
      'No',
      'No',
      'No',
    ],
  ),
  PricingModel(
    title: 'Upgraded',
    price: '79',
    values: [
      'Unlimited Users',
      'Yes',
      'Yes',
      'Yes',
      'Yes',
      'Yes',
      'No',
      'No',
      'No',
      'No'
    ],
  ),
  PricingModel(
    title: 'Premium',
    price: '150',
    values: [
      'Unlimited Users',
      'Yes',
      'Yes',
      'Yes',
      'Yes',
      'Yes',
      'Yes',
      'Yes',
      'Yes',
      'No'
    ],
  ),
  PricingModel(
    title: 'Enterprise',
    price: 'assets/icons8-dashboard-layout-48.png',
    values: [
      'Unlimited Users',
      'Yes',
      'Yes',
      'Yes',
      'Yes',
      'Yes',
      'Yes',
      'Yes',
      'Yes',
      'Yes'
    ],
  ),
];
