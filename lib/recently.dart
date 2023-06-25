import 'package:flutter/material.dart';



class recently extends StatefulWidget {
  const recently({Key? key}) : super(key: key);

  @override
  State<recently> createState() => _recentlyState();
}

class _recentlyState extends State<recently> {
  final List<String> items = ['처방기록', '최근기록', '복용기록'];
  String? selecteditems;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: DropdownButton(
          underline: SizedBox.shrink(),
          hint: Text('최근기록'
            , style: TextStyle(
                color: Colors.white,
                fontSize: 20.0
            ),
          ),
          items: items.map(
                (String item) => DropdownMenuItem(
              child: Text(item,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15.0
                ),),
              value : item,
            ),
          ).toList(),
          onChanged: (String? value) => setState(() {
            this.selecteditems = value;
            if (value == '최근기록') {
              print('현재 위치함');
            } else if (value == '처방기록') {
              Navigator.pushNamed(context, '/pslist');
            } else if (value == '복용기록') {
              Navigator.pushNamed(context, '/takelist');
            }
          }),
          value: selecteditems,
        ),
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
            Text('20xx년 xx월 xx일'),
            SizedBox(
              height: 20.0,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 80.0,
                  ),
                  Text('오전 xx시 xx분'),
                  SizedBox(
                    width: 10.0,
                  ),
                  Icon(Icons.check_box),
                  SizedBox(
                    width: 80.0,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 80.0,
                  ),
                  Text('오후 xx시 xx분'),
                  SizedBox(
                    width: 10.0,
                  ),
                  Icon(Icons.check_box),
                  SizedBox(
                    width: 80.0,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            Container(
                width: 350,
                child: Divider(color: Colors.black, thickness: 2.0)
            ),
            SizedBox(
              height: 40.0,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 80.0,
                  ),
                  Text('처방약'),
                  SizedBox(
                    width: 10.0,
                  ),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('최근 복용 기록'),
                        Text('20xx년 xx월 xx일 xx시 xx분'),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 80.0,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 80.0,
                  ),
                  Text('알약'),
                  SizedBox(
                    width: 10.0,
                  ),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('최근 복용 기록'),
                        Text('20xx년 xx월 xx일 xx시 xx분'),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 80.0,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 80.0,
                  ),
                  Text('물약'),
                  SizedBox(
                    width: 10.0,
                  ),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('최근 복용 기록'),
                        Text('20xx년 xx월 xx일 xx시 xx분'),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 80.0,
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