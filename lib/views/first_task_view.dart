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
            const Text('CREDIT LEDGER', style: TextStyle(fontSize: 20.0)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 3.0),
                  child: const Icon(
                    Icons.sort_by_alpha,
                    color: Color(0xFFbd4b88),
                    size: 25.0,
                  ),
                ),
                Container(
                    padding: const EdgeInsets.symmetric(horizontal: 3.0),
                    child: const Icon(Icons.search,
                        color: Color(0xFFbd4b88), size: 25.0)),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 3.0),
                  child: const Icon(
                    Icons.mail_outlined,
                    color: Color(0xFFbd4b88),
                    size: 25.0,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 3.0),
                  child: const Icon(
                    Icons.settings,
                    color: Color(0xFFbd4b88),
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
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Column(
                            children: [
                              const Text(
                                'Total  Credit',
                                style: TextStyle(fontSize: 10),
                              ),
                              Text(
                                '${NumberFormat.simpleCurrency(name: 'PHP').currencySymbol}86.00',
                                style: const TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              // 3 buttons and date picker
              Container(
                margin: const EdgeInsets.only(top: 15.0, bottom: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        width: 55,
                        padding: const EdgeInsets.only(
                            left: 5.0, right: 5.0, top: 3.0, bottom: 3.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0),
                            color: Colors.indigo[600]),
                        child: const Text('All',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white, fontSize: 12.0))),
                    Container(
                        width: 55,
                        padding: const EdgeInsets.only(
                            left: 5.0, right: 5.0, top: 3.0, bottom: 3.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0),
                            border: Border.all(color: Colors.black)),
                        child: const Text('Unpaid',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 12.0))),
                    Container(
                        width: 55,
                        padding: const EdgeInsets.only(
                            left: 5.0, right: 5.0, top: 3.0, bottom: 3.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0),
                            border: Border.all(color: Colors.black)),
                        child: const Text('Paid',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 12.0))),
                    Container(
                      width: 150,
                      padding: const EdgeInsets.only(
                          left: 10.0, right: 10.0, top: 5.0, bottom: 5.0),
                      decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(50.0)),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Due Date',
                            style: TextStyle(fontSize: 12.0),
                          ),
                          Icon(
                            Icons.calendar_today_outlined,
                            size: 18.0,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              // Table Headers/ Titles
              Container(
                padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        width: 100.0,
                        child: const Text(
                          'Reminder',
                          style: TextStyle(fontSize: 12.0),
                        )),
                    Container(
                        width: 100.0,
                        child: const Text('Customer Name',
                            style: TextStyle(fontSize: 12.0))),
                    Container(
                        width: 100.0,
                        child: const Text('Balance',
                            style: TextStyle(fontSize: 12.0))),
                  ],
                ),
              ),
              // List view items
              Container(
                height: 300.0,
                margin: const EdgeInsets.only(top: 10.0),
                child: ListView(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(
                          top: 10.0, bottom: 10.0, left: 10.0, right: 10.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black45,
                              blurRadius: 5.0,
                            )
                          ]),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 100,
                            padding: const EdgeInsets.only(
                                top: 5.0, bottom: 5.0, left: 10.0, right: 10.0),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: const Color(0xFFfc3395)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text('REMIND',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 10.0)),
                                Container(
                                  padding: const EdgeInsets.all(2.0),
                                  margin: const EdgeInsets.only(left: 4.0),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: Colors.white),
                                  child: const Icon(
                                    Icons.notifications,
                                    size: 12.0,
                                    color: Color(0xFFfc3395),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: 100.0,
                            child: const Text(
                              'Juan Dela Cruz',
                              style: TextStyle(fontSize: 12.0),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          Container(
                              width: 105.0,
                              padding: const EdgeInsets.only(
                                left: 5.0,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                      '${NumberFormat.simpleCurrency(name: 'PHP').currencySymbol}10.00',
                                      style: const TextStyle(
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.bold)),
                                  const Icon(Icons.chevron_right)
                                ],
                              )),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 15),
                      padding: const EdgeInsets.only(
                          top: 10.0, bottom: 10.0, left: 10.0, right: 10.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black45,
                              blurRadius: 5.0,
                            )
                          ]),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 100,
                            padding: const EdgeInsets.only(
                                top: 5.0, bottom: 5.0, left: 10.0, right: 10.0),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: const Color(0xFFfc3395)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text('REMIND',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 10.0)),
                                Container(
                                  padding: const EdgeInsets.all(2.0),
                                  margin: const EdgeInsets.only(left: 4.0),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: Colors.white),
                                  child: const Icon(
                                    Icons.notifications,
                                    size: 12.0,
                                    color: Color(0xFFfc3395),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: 100.0,
                            child: const Text(
                              'Mel Francis',
                              style: TextStyle(fontSize: 12.0),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          Container(
                              width: 105.0,
                              padding: const EdgeInsets.only(
                                left: 5.0,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                      '${NumberFormat.simpleCurrency(name: 'PHP').currencySymbol}76.00',
                                      style: const TextStyle(
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.bold)),
                                  const Icon(Icons.chevron_right)
                                ],
                              )),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10.0),
                      padding: const EdgeInsets.only(
                          top: 10.0, bottom: 10.0, left: 10.0, right: 10.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black45,
                              blurRadius: 5.0,
                            )
                          ]),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 100,
                            padding: const EdgeInsets.only(
                                top: 5.0, bottom: 5.0, left: 10.0, right: 10.0),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: const Color(0xFFbdbdbd)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text('REMIND',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 10.0)),
                                Container(
                                  padding: const EdgeInsets.all(2.0),
                                  margin: const EdgeInsets.only(left: 4.0),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: Colors.white),
                                  child: const Icon(
                                    Icons.notifications,
                                    size: 12.0,
                                    color: Color(0xFFbdbdbd),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: 100.0,
                            child: const Text(
                              'Pedro Peduko',
                              style: TextStyle(fontSize: 12.0),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          Container(
                              width: 105.0,
                              padding: const EdgeInsets.only(
                                left: 5.0,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                      '${NumberFormat.simpleCurrency(name: 'PHP').currencySymbol}0.00',
                                      style: const TextStyle(
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.bold)),
                                  const Icon(Icons.chevron_right)
                                ],
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ]),
          ),
        ],
      ),
      floatingActionButton: Container(
          width: 200.0,
          padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
          decoration: BoxDecoration(
            color: const Color(0xFFe72f92),
            borderRadius: BorderRadius.circular(40),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.person,
                color: Colors.white,
              ),
              Container(
                margin: const EdgeInsets.only(left: 5.0),
                child: const Text(
                  'ADD CUSTOMER',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w300),
                ),
              )
            ],
          )),
    );
  }
}
