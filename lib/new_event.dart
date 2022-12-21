import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewEventScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _NewEventScreen();

}

class _NewEventScreen extends State<NewEventScreen>{
  final TextEditingController _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.deepPurpleAccent,
      title: Text('New Event'),
    ),
      body: Container(color:Colors.deepPurpleAccent.withOpacity(0.2) ,width: 430,
        child: Column(
          children: [
            Container(padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
              child: TextField(textAlign:TextAlign.center ,style: TextStyle(
                color: Colors.white
              ),decoration: InputDecoration(contentPadding:EdgeInsets.symmetric(vertical: 40), labelText: 'Event',

                fillColor: Colors.deepPurpleAccent,
                filled: true,
                  labelStyle: TextStyle(fontSize: 20,
                      color: Colors.white
                  ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50)
                ),
                prefixIcon: Icon(Icons.event,
                color: Colors.white,size:30 ,)

              ),
                keyboardType: TextInputType.multiline,
                maxLines: null,
                controller: _textEditingController,
              ),
            ),
               Builder(
                builder: (context) {
                  return Container(
                    height: 70,
                    width: 400,
                    padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
                    child: ElevatedButton(
                        style: ButtonStyle(
backgroundColor: MaterialStateProperty.all(Colors.deepPurpleAccent.withOpacity(0.2)),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                              side: BorderSide(color: Colors.deepPurpleAccent)
                            )
                          )

                        ),
                        onPressed: () {
                      String newEventText = _textEditingController.text;
                      Navigator.of(context).pop(newEventText);
                    }, child: Text("ADD")),
                  );
                }
              ),


          ],
        ),
      ),

    );
  }
  
}