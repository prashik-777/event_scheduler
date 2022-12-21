import 'package:event_scheduler/new_event.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _MyApp();

}

class _MyApp extends State<MyApp> {  @override
final List<Widget> _list=[

];
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Event Scheduler'),
          backgroundColor: Colors.deepPurpleAccent,

        ),
        body:

          //padding: EdgeInsets.all(20),
         // decoration: BoxDecoration(
           // color: Colors.deepPurpleAccent.withOpacity(0.2)
         // ),
          Container(
            color: Colors.deepPurpleAccent.withOpacity(0.2),
            child: ListView.builder(
                itemCount: _list.length,
                itemBuilder: (BuildContext context,int index){
              return Container(margin: EdgeInsets.all(20),
              //padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
              //color: Colors.white,
              decoration: BoxDecoration(
                 color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              ),

              child: ListTile(
                title: _list[index],
              ),
              );
        },
        ),
          ),
        floatingActionButton: Builder(
          builder: (context) {
            return FloatingActionButton(
              backgroundColor: Colors.deepPurpleAccent,
              onPressed: () async {
                String newText = await Navigator.of(context).push(MaterialPageRoute(builder: (context)=>NewEventScreen()));
                setState(() {
                  _list.add(Container(height: MediaQuery.of(context).size.width * 0.2,
                      width: MediaQuery.of(context).size.width * 0.5,color: Colors.white,
                      padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                      child: Text(newText)));
                });
              },
              child: Icon(Icons.add),
            );
          }
        ),

    ),);
  }
}
