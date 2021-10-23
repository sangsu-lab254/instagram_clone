import 'package:flutter/material.dart';

class Account extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("아이디", style: TextStyle(fontWeight: FontWeight.bold)),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.exit_to_app), onPressed: () => { print("뒤로가기")})
        ],
      ),
      body: _buildBody()
    );
  }

  Widget _buildBody() {
    return Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Stack(
                      children: [
                        SizedBox(
                          width: 80.0,
                          height: 80.0,
                          child: CircleAvatar(backgroundColor: Colors.grey),
                        ),
                        Container(
                          width: 80.0,
                          height: 80.0,
                          alignment: Alignment.bottomRight,
                          child: Stack(
                            alignment: Alignment.center,
                            children: <Widget>[
                              SizedBox(
                                width: 27.0,
                                height: 27.0,
                                child: CircleAvatar(backgroundColor: Colors.white)
                              ),
                              SizedBox(
                                width: 25.0,
                                height: 25.0,
                                child: FloatingActionButton(
                                  backgroundColor: Colors.blue,
                                  child: Icon(Icons.add),
                                  onPressed: () => { print("추가") },
                                ),
                              ),
                            ],
                          )
                        )

                      ],
                    ),
                    Padding(padding: EdgeInsets.all(5.0)),
                    Text("이름", textAlign: TextAlign.center, style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold)), 
                  ],
                ),
                Text("0\n게시물", textAlign: TextAlign.center, style: TextStyle(fontSize: 18.0)),
                Text("0\n팔로워", textAlign: TextAlign.center, style: TextStyle(fontSize: 18.0)),
                Text("0\n팔로잉", textAlign: TextAlign.center, style: TextStyle(fontSize: 18.0)),
              ],
            )
          ],
        ),
      );
  }
}
