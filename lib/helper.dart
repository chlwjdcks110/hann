import 'package:shared_preferences/shared_preferences.dart';
import 'test.dart';
import 'dart:convert';

class SPHelper{
  static late SharedPreferences prefs;

  Future init() async {
    prefs = await SharedPreferences.getInstance();
  }


  Future writePerformance(Performance performance) async {
    prefs.setString(
        performance.id.toString(),json.encode(performance.toJson())
    );
  }

  Future setCounter() async {
    int counter = prefs.getInt('counter') ?? 0;
    counter++;
    await prefs.setInt('counter', counter);
  }

  int getCounter() {
    return prefs.getInt('counter') ?? 0;
  }

  List<Performance> getPerformances() {
    List<Performance> performances = [];
    Set<String> keys = prefs.getKeys();
    keys.forEach((String key) {
      if (key != 'counter') {
        Performance performance =
        Performance.fromJson(json.decode(prefs.getString(key) ?? '' ));
        performances.add(performance);
      }
    });
    return performances;
  }

  Future deletePerformance(int id) async{
    prefs.remove(id.toString());
  }


}