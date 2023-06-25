import 'package:flutter/material.dart';


class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("xxsdfx님"),
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
              child: const Icon(Icons.people,size:30.0,
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
              title: Text('블루투스 설정'),
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
                  Container(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        elevation: 0.0,

                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/alarm');
                      },
                      child: const Icon(Icons.alarm,size:50.0,
                          color: Colors.black),
                    ),
                  ),
                  SizedBox(
                    width: 18.0,
                  ),
                  Container(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        elevation: 0.0,

                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/recently');
                      },
                      child: const Icon(Icons.book,size:50.0,
                        color: Colors.black,),
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Container(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        elevation: 0.0,

                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/QRcodescan');
                      },
                      child: const Icon(Icons.camera_alt,size:50.0,
                        color: Colors.black,),
                    ),
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
                  Text('알람설정', style: TextStyle(letterSpacing: 2.0)),
                  SizedBox(
                    width: 20.0,
                  ),
                  Text('최근기록', style: TextStyle(letterSpacing: 2.0)),
                  SizedBox(
                    width: 20.0,
                  ),
                  Text('QR코드', style: TextStyle(letterSpacing: 2.0)),
                ],
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Container(
                width: 350,
                child: Divider(color: Colors.black, thickness: 2.0)
            ),
            Text(
              '잔여량',
              style: TextStyle(
                letterSpacing: 1.0,
                fontSize: 40,
              ),
            ),
            SizedBox(
              height: 50.0,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('처방약', style: TextStyle(letterSpacing: 2.0)),
                  SizedBox(
                    width: 20.0,
                  ),
                  Text('알약', style: TextStyle(letterSpacing: 2.0)),
                  SizedBox(
                    width: 20.0,
                  ),
                  Text('물약', style: TextStyle(letterSpacing: 2.0)),
                ],
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.star, size: 40,),
                  SizedBox(
                    width: 20.0,
                  ),
                  Icon(Icons.star, size: 40,),
                  SizedBox(
                    width: 20.0,
                  ),
                  Icon(Icons.star, size: 40,),
                ],
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('xx약', style: TextStyle(letterSpacing: 2.0)),
                  SizedBox(
                    width: 20.0,
                  ),
                  Text('알약1', style: TextStyle(letterSpacing: 2.0)),
                  SizedBox(
                    width: 20.0,
                  ),
                  Text('물약2', style: TextStyle(letterSpacing: 2.0)),
                ],
              ),
            ),
            SizedBox(
              height: 50.0,
            ),
            Container(
                width: 350,
                child: Divider(color: Colors.black, thickness: 2.0)
            ),
            SizedBox(
              height: 35.0,
            ),
            Text('20xx년 xx월 xx일', style: TextStyle(fontSize: 30),
            ),
            SizedBox(
              height: 35.0,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.alarm, size: 40,),
                  SizedBox(
                    width: 20.0,
                  ),
                  Container(
                    child: Column(
                      children: [
                        Text('xx 시 xx분'),
                        Text('xx약')
                      ],
                    ),
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