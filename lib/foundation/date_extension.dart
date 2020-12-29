

extension DateOption on DateTime {

  String currentTime({String format = "yyyy-MM-dd HH:mm:ss"}) {
    var time = format;
    var date = new DateTime.now();
    time = time.replaceAll("yyyy", date.year.toString());
    time = time.replaceAll("MM", date.month.toString());
    time = time.replaceAll("dd", date.day.toString());
    time = time.replaceAll("HH", date.hour.toString());
    time = time.replaceAll("mm", date.minute.toString());
    time = time.replaceAll("ss", date.second.toString());
    return time;
  }
}