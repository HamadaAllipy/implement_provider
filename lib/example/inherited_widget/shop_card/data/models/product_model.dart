class ProductModel {
  final String name;
  final int price;
  bool isCheck;

  ProductModel({
    required this.name,
    required this.price,
    this.isCheck = false,
});
}
