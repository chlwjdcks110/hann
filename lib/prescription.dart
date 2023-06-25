import 'package:flutter/material.dart';



class prescription extends StatefulWidget {
  const prescription({Key? key}) : super(key: key);

  @override
  State<prescription> createState() => _prescriptionState();
}

class _prescriptionState extends State<prescription> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("처방약"),
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
                Navigator.pushNamed(context, '/alarm');
              },
            ),
            ListTile(
              title: Text('복용기록'),
              onTap: () {
                Navigator.pushNamed(context, '/alarm');
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
                width: 350,
                child: Divider(color: Colors.black, thickness: 2.0)
            ),
            Container(
              child: Row(
                children: [
                  Container(
                      height: 20,
                      child: Divider(color: Colors.black, thickness: 2.0)
                  ),
                  Text('표 그리기'),
                ],
              ),
            ),
            SizedBox(
              height: 70.0,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.medical_services_rounded),
                  Text('약 사진과 드래그해서 약 종류별로 나타나게함'),

                ],
              ),
            ),
            SizedBox(
              height: 70.0,
            ),
            Text('20xx년 xx월 xx일 xx약 처방 - xx약국'),
            SizedBox(
              height: 30.0,
            ),
            Text('xx일 간 아침 저녁으로 2회'),
            SizedBox(
              height: 70.0,
            ),
            Text('처방 받으신 약이 x회 남으셨습니다.'),
          ],
        ),
      ),
    );
  }
}
