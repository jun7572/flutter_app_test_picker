import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_test_picker/my_switch.dart';

class  Pagetwo extends StatefulWidget {

  Pagetwo({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _PagetwoState createState() => _PagetwoState();
}

class _PagetwoState extends State<Pagetwo> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }
  bool aa=true;
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("aaaaa"),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child:  Column(
          children: <Widget>[
            Text("aaa"),
            Switch(
              value: aa,
              onChanged: (b){
                setState(() {
                  aa=b;
                });
              },
            ),

            CupertinoSwitch(
              value: aa,
              onChanged: (b){
                setState(() {
                  aa=b;
                });
              },

            ),
            MySwitch(
              value: aa,
              onChanged: (b){
                setState(() {
                  aa=b;
                });
              },
            ),
//
          ],
        ),

//      child: ListWheelScrollView(
//          itemExtent:20,
//          children:getList(),
//          onSelectedItemChanged:(index){
//            print(index.toString());
//            }
//      ),

      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
  List<Widget>  getList(){
    List<Widget> list =[];
    for(int i=0;i<20;i++){
      list.add(Text("aaa"+i.toString()));
    }
    return list;
  }


}
