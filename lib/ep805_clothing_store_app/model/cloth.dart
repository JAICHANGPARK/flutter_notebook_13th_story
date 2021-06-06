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
  Cloth(
      img: "https://cdn.pixabay.com/photo/2015/04/09/11/19/suit-714357__340.jpg",
      name: "Dream - Jacket",
      size: "Large (L)",
      originPrice: 112.99,
      discountPrice: 139.99),
  Cloth(
      img: "https://cdn.pixabay.com/photo/2017/10/29/13/17/jacket-2899728__340.png",
      name: "Dream Walker - Sport Wear",
      size: "Medium (M)",
      originPrice: 89.99,
      discountPrice: 79.99),
  Cloth(
      img: "https://cdn.pixabay.com/photo/2019/07/30/11/16/coffee-4372724__340.jpg",
      name: "Dream Walker - Jacket",
      size: "Extra Large (XL)",
      originPrice: 59.99,
      discountPrice: 42.99),
  Cloth(
      img: "https://cdn.pixabay.com/photo/2019/07/30/11/16/coffee-4372724__340.jpg",
      name: "Dream Walker - Jacket",
      size: "Extra Large (XL)",
      originPrice: 59.99,
      discountPrice: 42.99),
];
