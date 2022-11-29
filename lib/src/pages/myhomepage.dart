import 'package:dars26/src/pages/second_page.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  PageStorageBucket _bucket2 = PageStorageBucket();
  var pageStrKeyl = PageStorageKey('View');
  var pageStrKey2 = PageStorageKey('View2');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: Text("Dars 26 PageStroage"),
      ),
      body: Center(
        child: Column(
          children: [
            PageStorage(
              bucket: _bucket2,
              child: Container(
                child: Column(
                  children: [
                    Container(
                      width: 400,
                      height: 300,
                      child: ListView.builder(
                          key: pageStrKeyl,
                          itemCount: 50,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: ((context, index) {
                            return Container(
                              width: 200,
                              height: 100,
                              alignment: Alignment.center,
                              margin: EdgeInsets.all(10),
                              child: Text(index.toString()),
                              color: Colors.green,
                            );
                          })),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: 400,
              height: 300,
              child: ListView.builder(
                  itemCount: 50,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: ((context, index) {
                    return Container(
                      width: 200,
                      height: 100,
                      alignment: Alignment.center,
                      margin: EdgeInsets.all(10),
                      child: Text(index.toString()),
                      color: Colors.green,
                    );
                  })),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: ((context) => SecondPage())));
      }),
    );
  }
}
