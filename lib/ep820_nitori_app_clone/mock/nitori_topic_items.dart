import 'package:flutter_notebook_13th_story/ep820_nitori_app_clone/enums/sns_type.dart';
import 'package:flutter_notebook_13th_story/ep820_nitori_app_clone/model/nitori_topic.dart';

DateTime nowDateTime = DateTime.now();

List<NitoriTopic> nitoriTopicItems = [
  NitoriTopic(
      date: "${nowDateTime.year / nowDateTime.month / nowDateTime.day}",
      img: "https://cdn.pixabay.com/photo/2017/08/02/01/01/living-room-2569325_960_720.jpg",
      title: "家具引取りサービス無料",
      isLike: false,
      likeCount: 0,
      type: SnsType.kiji)
];
