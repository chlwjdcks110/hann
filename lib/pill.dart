import 'package:flutter/material.dart';



class pill extends StatefulWidget {
  const pill({Key? key}) : super(key: key);

  @override
  State<pill> createState() => _pillState();
}

class _pillState extends State<pill> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("알약"),
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
            SizedBox(
              height: 30.0,
            ),
            Container(
                width: 350,
                child: Divider(color: Colors.black, thickness: 2.0)
            ),
            Container(

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                children: [
                  Flexible(
                    child: Image.asset('assets/ex.png', width: 60, height: 200,),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Flexible(
                    child: Image.asset('assets/ex.png', width: 60, height: 130,),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Flexible(
                    child: Image.asset('assets/ex.png', width: 60, height: 130,),
                  ),
                ],
              ),
            ),
            Container(
                width: 350,
                child: Divider(color: Colors.black, thickness: 2.0)
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('타이레놀1', style: TextStyle(letterSpacing: 2.0)),
                  SizedBox(
                    width: 20.0,
                  ),
                  Text('타이레놀2', style: TextStyle(letterSpacing: 2.0)),
                  SizedBox(
                    width: 20.0,
                  ),
                  Text('타이레놀3', style: TextStyle(letterSpacing: 2.0)),
                ],

              ),
            ),
            SizedBox(
              height: 24.0,
            ),
            Text('타이레놀 1 - 20xx년 xx월 xx일 xx시 xx분 복용'),
            SizedBox(
              height: 10.0,
            ),
            Text('타이레놀 2 - 20xx년 xx월 xx일 xx시 xx분 복용'),
            SizedBox(
              height: 10.0,
            ),
            Text('타이레놀 3 - 20xx년 xx월 xx일 xx시 xx분 복용'),
          ],
        ),

      ),

    );
  }
}