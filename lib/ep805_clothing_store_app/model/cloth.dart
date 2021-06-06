class Cloth {
  String? img;
  String? name;
  String? size;
  double? originPrice;
  double? discountPrice;

  Cloth({this.img, this.name, this.size, this.originPrice, this.discountPrice});
}

List<Cloth> clothItems = [
  Cloth(
      img: "https://cdn.pixabay.com/photo/2019/07/30/11/16/coffee-4372724__340.jpg",
      name: "Dream Walker - Jacket",
      size: "Extra Large (XL)",
      originPrice: 59.99,
      discountPrice: 42.99),
];
