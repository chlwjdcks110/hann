import 'package:flutter/material.dart';


class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {


  Future<dynamic> Newuser(BuildContext context) async {
    return showDialog(
        context:context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('회원가입'),
            content: SingleChildScrollView(
              child: Column(
                children: [
                  TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(hintText: '이메일'),
                  ),
                  TextField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(hintText: '비밀번호'),
                  )
                ],
              ),
            ),
            actions: [
              TextButton(
                  child: Text('확인'),
                  onPressed:() {
                    Navigator.pop(context);
                  })
            ],
          );
        }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Padding(padding: EdgeInsets.only(top: 50)),
          Center(
            // child: Image(
            //   image: AssetImage('assets/ex.png',),
            //   width: 170.0,
            //   height: 90.0,
            child: Text('CMB',style: TextStyle(
              fontSize : 30.0,
            ),
            ),
          ),
          Form(
              child: Theme(
                data: ThemeData(
                    primaryColor: Colors.grey,
                    inputDecorationTheme: InputDecorationTheme(
                        labelStyle: TextStyle(
                            color: Colors.teal, fontSize: 15.0))),
                child: Container(
                    padding: EdgeInsets.all(40.0),
                    // 키보드가 올라와서 만약 스크린 영역을 차지하는 경우 스크롤이 되도록
                    // SingleChildScrollView으로 감싸 줌
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          TextField(
                            decoration: InputDecoration(
                                labelText: '아이디'),
                            keyboardType: TextInputType.emailAddress,
                          ),
                          TextField(
                            decoration:
                            InputDecoration(labelText: '비밀번호'),
                            keyboardType: TextInputType.text,
                            obscureText: true, // 비밀번호 안보이도록 하는 것
                          ),
                          SizedBox(height: 40.0,),
                          Container(
                              child: Column(
                                children: [
                                  ButtonTheme(
                                    minWidth: 100.0,
                                    height: 50.0,
                                    child: ElevatedButton(
                                      onPressed: (){
                                        Navigator.pushNamedAndRemoveUntil(context, '/home',(route)=>false);
                                      },
                                      child: Icon(
                                        Icons.arrow_forward,
                                        color: Colors.white,
                                        size: 35.0,
                                      ),
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.lightBlueAccent,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  InkWell(
                                    onTap: (){
                                      Newuser(context);
                                    },
                                    child: Container(
                                      height: 20.0,
                                      width: 60.0,
                                      child: Text('회원가입'),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Text('아이디 찾기'),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Text('비밀번호 찾기')
                                ],
                              )
                          )
                        ],
                      ),
                    )),
              ))
        ],
      ),
    );
  }
}