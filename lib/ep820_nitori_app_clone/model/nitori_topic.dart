import '../enums/sns_type.dart';

class NitoriTopic {
  String? date;
  String? title;
  String? img;
  SnsType? type; // sns, kiji,
  int? likeCount;
  bool? isLike;

  NitoriTopic({this.date, this.title, this.img, this.type, this.likeCount, this.isLike});
}
