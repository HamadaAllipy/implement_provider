class ProductModel{
  String name;
  int id;
  bool isChecked;
  int price;

  ProductModel({
    required this.name,
    required this.id,
    required this.price,
    this.isChecked = false,
  });
}