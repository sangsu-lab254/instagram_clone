import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("검색",
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold))),
        body: _buildBody(),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.blue,
          child: Icon(Icons.create),
          onPressed: () => { print("새 글 작성")}),
        );
  }

  Widget _buildBody() {
    return GridView.builder(
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: 1.0,
            mainAxisSpacing: 1.0,
            crossAxisSpacing: 1.0,
          ),
      itemCount: 5,
      itemBuilder: _buildGridItem,
    );
  }

  Widget _buildGridItem(BuildContext context, int index) {
    return Image.network(
        "https://upload.wikimedia.org/wikipedia/ko/2/24/Lenna.png",
        fit: BoxFit.cover);
  }
}
