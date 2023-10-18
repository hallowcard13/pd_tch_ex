import 'package:flutter/material.dart';
import '../models/product_model.dart';

class ThirdTaskView extends StatefulWidget {
  const ThirdTaskView({Key? key}) : super(key: key);

  @override
  State<ThirdTaskView> createState() => _ThirdTaskView();
}

class _ThirdTaskView extends State<ThirdTaskView> {
  List<ProductModel> products = [
    ProductModel(name: 'Smartphone', price: 120000),
    ProductModel(name: 'Laptop', price: 60000),
    ProductModel(name: 'Headphones', price: 3000),
    ProductModel(name: 'Tablet', price: 7000),
    ProductModel(name: 'Smartwatch', price: 1500)
  ];

  List<ProductModel> productsAppliedFnc = [];
  TextEditingController from = TextEditingController();
  TextEditingController to = TextEditingController();
  TextEditingController discountInput = TextEditingController();

  void filterProductPrice({required double from, required double to}) {
    if (productsAppliedFnc.isNotEmpty) {
      setState(() {
        productsAppliedFnc = [];
      });
    } else {
      for (var product in products) {
        if (product.price >= from && product.price <= to) {
          setState(() {
            productsAppliedFnc.add(product);
          });
        }
      }
    }
  }

  void applyDiscount({required int discount}) {
    if (productsAppliedFnc.isNotEmpty) {
      setState(() {
        productsAppliedFnc = [];
      });
    }
    for (var product in products) {
      var theDiscount = discount / 100;
      var newProduct =
          ProductModel(name: product.name, price: product.price - theDiscount);

      setState(() {
        productsAppliedFnc.add(newProduct);
      });
      print(product.getPrice);
    }
  }

  List<ProductModel> getProduct() {
    return productsAppliedFnc.isEmpty ? products : productsAppliedFnc;
  }

  @override
  Widget build(context) {
    return Scaffold(
        appBar: AppBar(automaticallyImplyLeading: true),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(children: [
              Container(
                  margin: EdgeInsets.only(bottom: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          showDialog<void>(
                            context: context,
                            barrierDismissible: false, // user must tap button!
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: const Text('Sort Product by Price'),
                                content: SingleChildScrollView(
                                    child: Form(
                                  child: ListBody(
                                    children: <Widget>[
                                      TextField(
                                        decoration: const InputDecoration(
                                            labelText: 'Price From'),
                                        keyboardType: TextInputType.number,
                                        controller: from,
                                      ),
                                      TextField(
                                        decoration: const InputDecoration(
                                            labelText: 'Price To'),
                                        keyboardType: TextInputType.number,
                                        controller: to,
                                      ),
                                    ],
                                  ),
                                )),
                                actions: <Widget>[
                                  TextButton(
                                    child: const Text('Apply'),
                                    onPressed: () {
                                      filterProductPrice(
                                          from: double.parse(from.text),
                                          to: double.parse(to.text));
                                      Navigator.of(context).pop();
                                    },
                                  ),
                                  TextButton(
                                    child: const Text('Cancel'),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                  ),
                                ],
                              );
                            },
                          );
                        },
                        child: Container(
                          padding: EdgeInsets.all(5.0),
                          child: Text(
                            'Sort Price Range',
                            style: TextStyle(color: Colors.white),
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.0),
                              color: Colors.indigo),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          showDialog<void>(
                            context: context,
                            barrierDismissible: false, // user must tap button!
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: const Text('Apply discount'),
                                content: SingleChildScrollView(
                                    child: Form(
                                  child: ListBody(
                                    children: <Widget>[
                                      TextField(
                                        decoration: const InputDecoration(
                                            labelText: 'Discount'),
                                        keyboardType: TextInputType.number,
                                        controller: discountInput,
                                      ),
                                    ],
                                  ),
                                )),
                                actions: <Widget>[
                                  TextButton(
                                    child: const Text('Apply'),
                                    onPressed: () {
                                      applyDiscount(
                                          discount:
                                              int.parse(discountInput.text));
                                      Navigator.of(context).pop();
                                    },
                                  ),
                                  TextButton(
                                    child: const Text('Cancel'),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                  ),
                                ],
                              );
                            },
                          );
                        },
                        child: Container(
                          padding: EdgeInsets.all(5.0),
                          child: Text(
                            ' Apply Discount',
                            style: TextStyle(color: Colors.white),
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.0),
                              color: Colors.indigo),
                        ),
                      )
                    ],
                  )),
              Container(
                height: 800.0,
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Card(
                      child: ListTile(
                        leading: Text(getProduct()[index].getPrice.toString()),
                        title: Text(getProduct()[index].name),
                      ),
                    );
                  },
                  itemCount: getProduct().length,
                ),
              )
            ]),
          ),
        ));
  }
}
