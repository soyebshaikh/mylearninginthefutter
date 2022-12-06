import 'package:flutter/material.dart';
class CounterStateful extends StatefulWidget {

  Color buttonColor ;
   CounterStateful({Key? key, required this.buttonColor}) : super(key: key);

  @override
  State<CounterStateful> createState() {
    State<
        CounterStateful> stateClassAssociateWithThisWidget = _CounterStatefulState();
    return stateClassAssociateWithThisWidget;
  }
}

class _CounterStatefulState extends State<CounterStateful> {
  @override
  int counter =0;

  void increment(){
    if(mounted) {
      setState(() {
        counter++;
      });
    }
    print(counter);
  }
  @override
  void initState() {

    super.initState();
  }
@override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter'),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor:widget.buttonColor,
        child: Icon(Icons.add),
        onPressed: () {
          increment();
        },),
      body: Center(
        child: Text('$counter',
        style: TextStyle(fontSize: 30),),
      ),

    );
  }
}
