import 'package:flutter/material.dart';
import 'package:todo/api/api.dart';
import 'package:todo/widgets/app_bar.dart';
import 'package:todo/presentation/Add/widgets/text_fields.dart';

class AddData extends StatelessWidget {
  AddData({super.key});

  final TextEditingController titleController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        appBar:  PreferredSize(
           preferredSize: const Size.fromHeight(60),
          child: AppBarWidgets(button: [
        appBarButton1()
      ],centerTitle:"New" ,)),
        body: TextFields(titleController: titleController, descriptionController: descriptionController));
  }

  TextButton appBarButton1() { 
    return TextButton(
          onPressed: () {
            // FocusManager.instance.primaryFocus?.unfocus();
            Api().postTodo(titleController.text, descriptionController.text);
          }, 
          child: const Text(       
            'Done',
            style: TextStyle(color: Colors.amber),
          )
          );
  } 
}  
 