
class Task{
  String? taskNumber;
  String? title;
  String? tag;
  String? startDate;
  String? endDate;
  String? datetime;
  int? commentCount;

  Task({this.taskNumber, this.title, this.tag, this.startDate, this.endDate, this.datetime,
  });
}

List<Task> taskItem = [
  Task(
    taskNumber: "216",
    title: "Incorrect action message",
    tag: "ux-issue",
    startDate: "June 8",
    endDate: "June 10"
  ),
];