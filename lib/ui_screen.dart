import 'package:flutter/material.dart';
import 'package:ui/pricing_model.dart';

class UiScreen extends StatefulWidget {
  const UiScreen({super.key});

  @override
  State<UiScreen> createState() => _UiScreenState();
}

class _UiScreenState extends State<UiScreen> {
  int toogleBtnIndex = 0;
  int tableIndex = 0;

  // Map<String, List> pricing = {
  //   'title': ['Standard', 'Upgraded', 'Premium', 'Enterprise'],
  //   'price': ['49.99', '79', '150', 'assets/icons8-dashboard-layout-48.png'],
  //   'values': [
  //     [
  //       '1',
  //       'Yes',
  //       'No',
  //       'No',
  //       'No',
  //       'No',
  //       'No',
  //       'No',
  //       'No',
  //       'No',
  //     ],
  //     [
  //       'Unlimited Users',
  //       'Yes',
  //       'Yes',
  //       'Yes',
  //       'Yes',
  //       'Yes',
  //       'No',
  //       'No',
  //       'No',
  //       'No'
  //     ],
  //     [
  //       'Unlimited Users',
  //       'Yes',
  //       'Yes',
  //       'Yes',
  //       'Yes',
  //       'Yes',
  //       'Yes',
  //       'Yes',
  //       'Yes',
  //       'No'
  //     ],
  //     [
  //       'Unlimited Users',
  //       'Yes',
  //       'Yes',
  //       'Yes',
  //       'Yes',
  //       'Yes',
  //       'Yes',
  //       'Yes',
  //       'Yes',
  //       'Yes'
  //     ]
  //   ]
  // };

  List<String> tableTitle = [
    'No of Users',
    'Unlimited short links',
    'Digital washroom feedback',
    'Offer Wheels',
    'Customer feedback form',
    '50 Additional external short links\n with Visitors Analytics',
    'Custom SEO optimization',
    'Custom Integration',
    'Dedicated Account Manager',
    'Admin training'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(bottom: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Icon(
              Icons.architecture,
              size: 100,
            ),
            const SizedBox(
              height: 40,
            ),
            _buildToogleButton(),
            const SizedBox(
              height: 40,
            ),
            const Center(
              child: Text(
                'Our Satisfaction Guarantee: if you stop seeing value in Krofile, your last month will always be free',
                overflow: TextOverflow.ellipsis,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            if (toogleBtnIndex == 0)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 100),
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 152,
                          ),
                          ...tableTitle.map((title) {
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 50,
                                  width: double.maxFinite,
                                  child: Row(
                                    children: [
                                      Flexible(
                                        child: Text(
                                          title,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                      const SizedBox(width: 10),
                                      Icon(title == 'Custom SEO optimization'
                                          ? null
                                          : Icons.arrow_back)
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 1,
                                  color: Colors.grey.shade300,
                                ),
                              ],
                            );
                          })
                        ],
                      ),
                    ),
                    ...List.generate(pricing.length, (index) {
                      final title = pricing[index].title;
                      final price = pricing[index].price;
                      final values = pricing[index].values;
                      return Expanded(
                        child: GestureDetector(
                            onTap: () {
                              setState(() {
                                tableIndex = index;
                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: tableIndex == index
                                    ? Colors.white
                                    : Colors.transparent,
                                borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(12),
                                    topRight: Radius.circular(12)),
                              ),
                              child: Column(
                                children: [
                                  tableIndex == index
                                      ? Container(
                                          height: 30,
                                          alignment: Alignment.center,
                                          width: double.maxFinite,
                                          decoration: const BoxDecoration(
                                            color: Colors.green,
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(10),
                                                topRight: Radius.circular(10)),
                                          ),
                                          child: const Text(
                                            'Recommended',
                                            overflow: TextOverflow.ellipsis,
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        )
                                      : const SizedBox(
                                          height: 30,
                                          width: double.maxFinite,
                                        ),
                                  Column(
                                    children: [
                                      const SizedBox(height: 8),
                                      Text(
                                        title,
                                        overflow: TextOverflow.ellipsis,
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      ),
                                      const SizedBox(height: 8),
                                      title == 'Enterprise'
                                          ? Image.asset(
                                              price,
                                              height: 21,
                                            )
                                          : RichText(
                                              overflow: TextOverflow.ellipsis,
                                              text: TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text: '\$$price',
                                                    style: const TextStyle(
                                                      color: Colors.green,
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                  const TextSpan(
                                                      text: ' / month',
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          color: Colors.grey))
                                                ],
                                              ),
                                            ),
                                      const SizedBox(height: 20),
                                      GestureDetector(
                                        onTap: () {},
                                        child: Container(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 6, horizontal: 30),
                                          decoration: BoxDecoration(
                                              color: tableIndex == index
                                                  ? Colors.green
                                                  : Colors.grey.shade300,
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          child: Text(
                                            title == 'Enterprise'
                                                ? 'Contact Us'
                                                : 'Try for free',
                                            style: TextStyle(
                                                overflow: TextOverflow.ellipsis,
                                                fontWeight: FontWeight.w600,
                                                color: tableIndex == index
                                                    ? Colors.white
                                                    : Colors.black),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 10),
                                      ...values.map((standardValue) {
                                        return Column(
                                          children: [
                                            SizedBox(
                                              height: 50,
                                              width: double.maxFinite,
                                              child: standardValue == 'Yes'
                                                  ? const Icon(
                                                      Icons.check,
                                                      color: Colors.green,
                                                    )
                                                  : standardValue == 'No'
                                                      ? const Icon(Icons.close)
                                                      : Container(
                                                          alignment:
                                                              Alignment.center,
                                                          height: 50,
                                                          width:
                                                              double.maxFinite,
                                                          child: Text(
                                                            standardValue,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                          )),
                                            ),
                                            Container(
                                              height: 1,
                                              color: Colors.grey.shade300,
                                            ),
                                          ],
                                        );
                                      })
                                    ],
                                  ),
                                ],
                              ),
                            )),
                      );
                    })
                  ],
                ),
              )
          ],
        ),
      ),
    );
  }

  Widget _buildToogleButton() {
    List<Widget> widgets = [
      const Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('Pay Monthly'),
          Text(
            'Monthlybilling',
            style: TextStyle(color: Colors.grey),
          ),
        ],
      ),
      const Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('Pay Monthly'),
          Text('25% off', style: TextStyle(color: Colors.green)),
          Text(
            'Monthlybilling ',
            style: TextStyle(color: Colors.grey),
          ),
        ],
      )
    ];
    return Center(
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(50),
          border: Border.all(color: Colors.grey.shade400),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            ...List.generate(widgets.length, (index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    toogleBtnIndex = index;
                  });
                },
                child: Container(
                  height: 80,
                  width: 130,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: toogleBtnIndex == index
                          ? Colors.white
                          : Colors.transparent,
                      border: toogleBtnIndex == index
                          ? Border.all(color: Colors.green)
                          : null),
                  child: widgets[index],
                ),
              );
            })
          ],
        ),
      ),
    );
  }
}
