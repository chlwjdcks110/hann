import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:hann/test.dart';
import 'package:hann/helper.dart';




class alarm extends StatefulWidget {
  const alarm({Key? key}) : super(key: key);

  @override
  State<alarm> createState() => _alarmState();
}

class _alarmState extends State<alarm> {
  List<Performance> performances = [];
  final TextEditingController txtduration = TextEditingController();
  final SPHelper helper = SPHelper();


  @override
  void initState(){
    helper.init().then((value) {
      updateScreen();
    });
    super.initState();

  }




  Future savePerformance() async {
    if (txtduration.text == '0') {
      txtduration.text = '';
      Navigator.pop(context);
    } else if (txtduration.text != '') {
      DateTime now = DateTime.now();
      String today = '${now.year}-${now.month}-${now.day}';


      int id = helper.getCounter() + 1;

      Performance newPerformance = Performance(
          id, today, int.tryParse(txtduration.text) ?? 0
      );
      helper.writePerformance(newPerformance).then((_) {
        updateScreen();
        helper.setCounter();
      });

      txtduration.text = '';
      Navigator.pop(context);
    }
  }

  void updateScreen() {
    performances = helper.getPerformances();
    setState(() {});
  }

  Widget Content() {
    var x;
    performances.forEach((performance) {
      x = performance.duration;

    }  );
    return Container(
      child: Column(
        children: [
          Text('직접 입력'),
        ],
      ),
    );
  }


  List<Widget> tileContent() {
    List<Widget> tiles = [];
    performances.forEach((performance) {
      tiles.add(
        Dismissible(key: UniqueKey(),
          onDismissed: (_) {
            helper
                .deletePerformance(performance.id)
                .then((value) => updateScreen());
          },
          child:
          ListTile(
              title: Text(
                  '${performance.date} 일부터 ${performance.duration} 일 간 복용')
          ),
        ),
      );
    });
    return tiles;
  }




  Future<dynamic> showPerformanceDialog(BuildContext context) async {
    return showDialog(
        context:context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('원하는 일 수'),
            content: SingleChildScrollView(
              child: Column(
                children: [
                  TextField(
                    controller: txtduration,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(hintText: '원하는 일 수'),
                  )
                ],
              ),
            ),
            actions: [
              TextButton(
                child: Text('확인'),
                onPressed: savePerformance,
              )
            ],
          );
        }
    );
  }





  DateTime date = DateTime.now();

  @override
  Widget build(BuildContext contextal) {
    return Scaffold(
      appBar: AppBar(
        title: Text("알림 설정"),
        centerTitle: true,
        elevation: 0.0,
        actions: [
          Container(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                elevation: 0.0,

              ),
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(context, '/home',(route)=>false);
              },
              child: const Icon(Icons.home,size:30.0,
                  color: Colors.white),
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.fromLTRB(0.0, 40.0, 0.0, 0.0),
          children: <Widget>[
            Text('  메뉴', style: TextStyle(
              fontSize: 30.0,
            ),
            ),
            Container(
                width: 1,
                child: Divider(color: Colors.black, thickness: 2.0)
            ),

            ListTile(
              title: Text('처방약'),
              onTap: () {
                Navigator.pushNamed(context, '/prescription');
              },
            ),
            ListTile(
              title: Text('알약'),
              onTap: () {
                Navigator.pushNamed(context, '/pill');
              },
            ),
            ListTile(
              title: Text('물약'),
              onTap: () {
                Navigator.pushNamed(context, '/pill');
              },
            ),
            ListTile(
              title: Text('처방기록'),
              onTap: () {
                Navigator.pushNamed(context, '/pslist');
              },
            ),
            ListTile(
              title: Text('복용기록'),
              onTap: () {
                Navigator.pushNamed(context, '/takelist');
              },
            ),
            ListTile(
              title: Text('설정'),
              onTap: () {
                Navigator.pushNamed(context, '/alarm');
              },
            ),
            ListTile(
              title: Text('블루투스'),
              onTap: () {
                Navigator.pushNamed(context, '/bluetooth');
              },
            ),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(0.0, 40.0, 0.0, 0.0),
        child: Column(

          children: [

            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('기기알림'),
                  Text('휴대폰 알림')
                ],
              ),
            ),

            SizedBox(
              height: 20.0,
            ),
            Container(
                width: 350,
                child: Divider(color: Colors.black, thickness: 2.0)
            ),
            Container(
              height: 400.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('약 알람 맞추기'),
                  Expanded(child: Padding(
                    padding: EdgeInsets.fromLTRB(50, 10, 50, 20),
                    child: ListView(
                      children: tileContent(),
                    ),
                  ),),
                  SizedBox(
                    height: 50.0,
                  ),
                ],
              ),
            ),
            Container(
                width: 350,
                child: Divider(color: Colors.black, thickness: 2.0)
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('3일'),
                  SizedBox(
                    width: 50.0,
                  ),
                  Text('7일'),
                  SizedBox(
                    width: 50.0,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('30일'),
                  SizedBox(
                    width: 45.0,
                  ),
                  InkWell(
                    onTap: () {
                      showPerformanceDialog(context);
                    },
                    child :Container(
                      width: 60.0,
                      child: Row(
                        children: [
                          Content(),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),

                ],
              ),
            ),
          ],
        ),
      ),

    );


  }
}