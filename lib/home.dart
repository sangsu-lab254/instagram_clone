import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Sangstagram',
              style: TextStyle(fontWeight: FontWeight.bold)),
        ),
        body: _buildBody());
  }

  Widget _buildBody() {
    return Padding(
        padding: EdgeInsets.all(12.0),
        child: SafeArea(
            // 노치 대비
            child: SingleChildScrollView(
                child: Center(
                    child: Column(
                      children: <Widget>[
                        Text('Sangstagram에 오신 것을 환영합니다!', style: TextStyle(fontSize: 20)),
                        Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 10)),
                        Text('사진과 동영상을 보려면 팔로우하세요.'),
                        Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 10)),
                        SizedBox(
                          width: 240.0,
                          child: Card(
                            elevation: 3.0,
                            child: Column(
                              children: <Widget>[
                                Padding(padding: EdgeInsets.all(10.0)),
                                SizedBox(
                                  width: 80.0,
                                  height: 80.0,
                                  child: CircleAvatar(backgroundColor: Colors.grey),
                                ),
                                Padding(padding: EdgeInsets.all(5.0)),
                                Text("Email", style: TextStyle(fontWeight: FontWeight.bold)),
                                Text("Name"),
                                Padding(padding: EdgeInsets.all(5.0)),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    SizedBox(
                                      width: 70.0,
                                      height: 70.0,
                                      child: Container(color: Colors.grey),
                                    ),
                                    Padding(padding: EdgeInsets.all(1.0)),
                                    SizedBox(
                                      width: 70.0,
                                      height: 70.0,
                                      child: Container(color: Colors.lightBlue),
                                    ),
                                    Padding(padding: EdgeInsets.all(1.0)),
                                    SizedBox(
                                      width: 70.0,
                                      height: 70.0,
                                      child: Container(color: Colors.grey),
                                    ),
                                ]),
                                Padding(padding: EdgeInsets.all(5.0)),
                                ElevatedButton(
                                    onPressed: _onButtonClick,
                                    child: Text('팔로우')
                                ), // RaisedButton은 Deprecated됨
                                Padding(padding: EdgeInsets.all(5.0)),
                              ],
                        )))
                      ],
        )))));
  }

  void _onButtonClick() {
    print("hello");
  }
}
