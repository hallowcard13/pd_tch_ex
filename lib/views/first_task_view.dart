import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class FirstTaskView extends StatelessWidget {
  const FirstTaskView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(56),
        child: Container(
          decoration: const BoxDecoration(boxShadow: [
            BoxShadow(
                color: Colors.black54, blurRadius: 4.0, offset: Offset(0, 1.0))
          ], color: Colors.white),
          padding: const EdgeInsets.only(
              top: 56.0, left: 20, right: 20, bottom: 10.0),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            GestureDetector(
              onTap: () => Navigator.of(context).pop,
              child: const Icon(Icons.arrow_back),
            ),
            const Text('CREDIT LEDGER', style: TextStyle(fontSize: 22.0)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 3.0),
                  child: const Icon(
                    Icons.sort_by_alpha,
                    color: Colors.pink,
                    size: 25.0,
                  ),
                ),
                Container(
                    padding: const EdgeInsets.symmetric(horizontal: 3.0),
                    child: const Icon(Icons.search,
                        color: Colors.pink, size: 25.0)),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 3.0),
                  child: const Icon(
                    Icons.mail_outlined,
                    color: Colors.pink,
                    size: 25.0,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 3.0),
                  child: const Icon(
                    Icons.settings,
                    color: Colors.pink,
                    size: 25.0,
                  ),
                ),
              ],
            ),
          ]),
        ),
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: Column(children: [
              // Total Balance Card
              Container(
                width: 375.0,
                margin: const EdgeInsets.only(top: 10.0),
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                      Color(0xFF8e4098),
                      Color(0xFFb53a95),
                      Color(0xFFe13897),
                      Color(0xFFf73594)
                    ])),
                padding: const EdgeInsets.only(
                  top: 20.0,
                  bottom: 20.0,
                ),
                child: Column(
                  children: [
                    Text(
                      '${NumberFormat.simpleCurrency(name: 'PHP').currencySymbol}86.00',
                      style: const TextStyle(
                          fontSize: 36.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    const Text(
                      'Total Balance',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
              //Card after total balance
              Container(
                padding: const EdgeInsets.only(
                    top: 5.0, bottom: 5.0, left: 15.0, right: 15.0),
                decoration: const BoxDecoration(boxShadow: [
                  BoxShadow(
                      color: Colors.black54, blurRadius: 4.0, spreadRadius: 0.5)
                ], color: Colors.white),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      children: [
                        Text(
                          'Customer List',
                          style: TextStyle(fontSize: 10.0),
                        ),
                        Text(
                          '3 Entries',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: const EdgeInsets.only(right: 10.0),
                          child: Column(
                            children: [
                              const Text(
                                'Total Payment',
                                style: TextStyle(fontSize: 10),
                              ),
                              Text(
                                '${NumberFormat.simpleCurrency(name: 'PHP').currencySymbol}0.00',
                                style: const TextStyle(
                                    color: Colors.greenAccent,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                          child: Column(
                            children: [
                              const Text(
                                'Total  Credit',
                                style: TextStyle(fontSize: 10),
                              ),
                              Text(
                                '${NumberFormat.simpleCurrency(name: 'PHP').currencySymbol}86.00',
                                style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ]),
          ),
        ],
      ),
    );
  }
}
