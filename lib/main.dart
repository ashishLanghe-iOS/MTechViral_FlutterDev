import 'package:flutter/material.dart';


void main(){
  runApp(MaterialApp(
   // debugShowCheckedModeBanner: false,
    title: "Awesome App",
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AwesomeApp"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Align(
          alignment: Alignment.bottomRight,
          child: Container(
            width: 200,//MediaQuery.of(context).size.width,
            height: 400,//MediaQuery.of(context).size.height,
            color: Colors.black,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center, //vertical
                crossAxisAlignment: CrossAxisAlignment.center, //horizontal
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.all(8),
                    width: 100,
                    height: 100,
                    color: Colors.green,
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    width: 100,
                    height: 100,
                    color: Colors.yellowAccent,
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    width: 100,
                    height: 100,
                    color: Colors.red,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
