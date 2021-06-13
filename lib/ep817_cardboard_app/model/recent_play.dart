class RecentPlay{
  String? img;
  num? rate;
  String? title;
  String? subtitle;

  RecentPlay({this.img, this.rate, this.title, this.subtitle});
  @override
  String toString() {
    // TODO: implement toString
    return "${this.img}, ${this.rate}, ${this.title} , ${this.subtitle}";
  }
}