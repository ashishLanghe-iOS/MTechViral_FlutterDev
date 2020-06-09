
import 'package:dev01/my_drawer.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  TextEditingController _nameController = TextEditingController();
  var myText = "Change Me";
  var url = "http://jsonplaceholder.typicode.com/photos";
  var data;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    getData();
  }

  getData() async {
     var res = await http.get(url);
     data = jsonDecode(res.body);
     setState(() {});
     print(data);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Awesome App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: data != null ? ListView.builder(
          itemBuilder: (context,index){
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: ListTile(
                leading: Image.network(data[index]["url"]),
                title: Text(data[index]["title"],
                style: TextStyle(
                  fontWeight: FontWeight.bold
                ),
                ),
               subtitle: Text("ID : ${data[index]["id"]}"),
              ),
            );
          },
          itemCount: data.length,
        ) : Center(
          child: CircularProgressIndicator(),
        ),
      ),
      drawer: MyDrawer(),
      //floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: (){

          if (_nameController.text.isNotEmpty){
            myText = _nameController.text;
            setState(() {});
            // _nameController.text = "";
            _nameController.clear();
          }
        },
        child: Icon(Icons.refresh),
      ),
    );
  }
}
