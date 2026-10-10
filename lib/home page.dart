import 'package:flutter/material.dart';
import 'to do.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});


  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller=TextEditingController();
  List tasks=
  [['learn flutter',false],['learn js',false],['learn HTML',false]];
  @override
  void checkBox(int index) {
    setState(() {
      tasks[index][1] = !tasks[index][1];
    });
  }
  void saveAction(){
    setState(() {
      tasks.add([_controller.text,false]);
      _controller.clear();
    });


    }
void deleteTask(int index){
    setState(() {
      tasks.removeAt(index);
    });
}

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Simple to do',style: TextStyle(
            fontSize: 29,
            fontWeight: FontWeight.bold,


          ),),
          centerTitle: true,
          backgroundColor: Colors.deepPurple,
          foregroundColor: Colors.white,
        ),
        body:ListView.builder(itemCount: tasks.length, itemBuilder:(BuildContext context ,int index){
          return toDo(
              taskName: tasks[index][0],
            taskCompleted: tasks[index][1],
            onChanged: (value)=>checkBox(index),
            deletefunction: (context)=>deleteTask(index),

          );
        }
        ),
floatingActionButton: Padding(
  padding: const EdgeInsets.symmetric(horizontal: 20),
  child: Row(
    children: [
      Expanded(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),

          child: TextField(
            controller: _controller,
            decoration: InputDecoration(
                hintText:'add a task',
            ),
          ),
        ),
      ),
      FloatingActionButton(onPressed: saveAction,
          child:Icon(Icons.add)),


    ],



  ),
),
    );
    }
}