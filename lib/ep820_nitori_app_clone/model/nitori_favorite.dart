class NitoriFavotite {
  String? img;
  String? title;
  int? price;
  String? itemCode;
  bool? isSelect;
  int? count;

  NitoriFavotite({
    required this.img,
    required this.title,
    required this.price,
    required this.itemCode,
    this.count,
    this.isSelect,
  });
}
