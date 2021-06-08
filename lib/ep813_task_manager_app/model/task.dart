class Task {
  String? taskNumber;
  String? title;
  String? tag;
  String? startDate;
  String? endDate;
  DateTime? datetime;
  int? commentCount;

  Task({this.taskNumber, this.title, this.tag, this.startDate, this.endDate, this.datetime, this.commentCount});
}

List<Task> taskItem = [
  Task(
      taskNumber: "216",
      title: "Incorrect action message",
      tag: "ux-issue",
      startDate: "June 8",
      endDate: "June 10",
      commentCount: 104,
      datetime: DateTime.now()),
  Task(
      taskNumber: "208",
      title: "Return to the old design",
      tag: "customer feedback",
      startDate: "July 20",
      endDate: "July 25",
      commentCount: 0,
      datetime: DateTime.now().subtract(Duration(days: 30 * 4))),
  Task(
      taskNumber: "196",
      title: "Document adding feature",
      tag: "features",
      startDate: "June 17",
      endDate: "June 20",
      commentCount: 8,
      datetime: DateTime.now().subtract(Duration(days: 10))),
  Task(
      taskNumber: "104",
      title: "Verifying emails",
      tag: "v2.0",
      startDate: "June 17",
      endDate: "June 20",
      commentCount: 21,
      datetime: DateTime.now().subtract(Duration(days: 10))),

  Task(
      taskNumber: "162",
      title: "Flutter document",
      tag: "features",
      startDate: "June 17",
      endDate: "June 20",
      commentCount: 8,
      datetime: DateTime.now().subtract(Duration(days: 2))),
];
