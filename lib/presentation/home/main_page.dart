import 'package:flutter/material.dart';
import 'package:todo/api/api.dart';
import 'package:todo/model/model.dart';
import 'package:todo/presentation/Add/add_page.dart';
import 'package:todo/presentation/view/view_notes.dart';
import 'package:todo/widgets/app_bar.dart';

ValueNotifier<List<TodoModel>>  todoModelNotifiers = ValueNotifier([]);

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  get()async{
    todoModelNotifiers.value = await Api().getTodo();
  }
  @override
  Widget build(BuildContext context) {
    get();
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AppBarWidgets(centerTitle: 'ToDo',)),
      body: Padding(
        padding: const EdgeInsets.only(left: 5, right: 5),
        child: ValueListenableBuilder(
          valueListenable: todoModelNotifiers,
          builder: (context, value, child) {
            return GridView.builder(
            gridDelegate:  const SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 1 / .75,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 2),
            itemCount: value.length, 
            itemBuilder: (context, index) { 
              return InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> ViewPage(head: value[index].heading,description : value[index].description))); 
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 42, 42, 42).withOpacity(1),
                      borderRadius: BorderRadius.circular(15)),
                  child:  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                     value[index].heading ,
                      style: const TextStyle( 
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 17), 
                    ),
                  ),
                ),
              );
            },
          );
            
          },
        
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => AddData()));
        },
        splashColor: const Color.fromARGB(255, 173, 173, 173).withOpacity(.1),
        backgroundColor: Colors.amber,
        focusColor: Colors.grey.withOpacity(.1),
        child: const Icon(
          Icons.add,
          color: Colors.black,
        ),
      ),
    );
  }
}
