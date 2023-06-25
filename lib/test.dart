class Performance{
  int id = 0;
  int duration = 0;
  String date = '';

  Performance(this.id, this.date, this.duration);

  Performance.fromJson(Map<String, dynamic> performanceMap) {
    id = performanceMap['id'] ?? 0;
    date = performanceMap['date'] ?? '';
    duration = performanceMap['duration'] ?? 0;
  }

  Map<String, dynamic> toJson() {
    return {
      'id' : id,
      'date' : date,
      'duration' : duration
    };
  }

}