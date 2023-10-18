class ProductModel {
  final String name;
  double price;
  int? discount;

  ProductModel({required this.name, required this.price});

  double get getPrice => price;

  set setPrice(double newPrice) => price = newPrice;
}
