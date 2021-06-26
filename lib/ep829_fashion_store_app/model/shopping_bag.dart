class ShoppingBag {
  String? img;
  String? title;
  double? price;
  int? count;
  String? size;

  ShoppingBag({this.img, this.title, this.price, this.count, this.size});

  @override
  String toString() {
    return "ShoppingBag("
        "title: $title,"
        "price: $price,"
        "count: $count,"
        "size: $size)";
  }
}
