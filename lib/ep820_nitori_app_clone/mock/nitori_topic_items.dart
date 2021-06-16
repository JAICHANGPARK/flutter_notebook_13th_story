import 'package:flutter_notebook_13th_story/ep820_nitori_app_clone/enums/sns_type.dart';
import 'package:flutter_notebook_13th_story/ep820_nitori_app_clone/model/nitori_topic.dart';

DateTime nowDateTime = DateTime.now();
List<NitoriTopic> nitoriTopicItems = [
  NitoriTopic(
      date: "${nowDateTime.year / nowDateTime.month / nowDateTime.day}",
      img: "",
      title: "",
      isLike: false,
      likeCount: 0,
      type: SnsType.kiji)
];
