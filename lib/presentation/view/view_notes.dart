import 'package:flutter/material.dart';
import 'package:todo/widgets/app_bar.dart';

class ViewPage extends StatelessWidget {
  const ViewPage({super.key, required this.head, required this.description});
  final String head;
  final String description;
  
  @override
  Widget build(BuildContext context) { 
    return  Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: AppBarWidgets(button: [
        TextButton(
            onPressed: () {
              FocusManager.instance.primaryFocus?.unfocus();
            },
            child: const Text(
              'Done',
              style: TextStyle(color: Colors.amber),
            )
            )
      ],
      centerTitle: "Heading",)),
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Container(
            height: 50,
            width: double.maxFinite,
            decoration: BoxDecoration(color: const Color.fromARGB(255, 37, 37, 37),
            borderRadius: BorderRadius.circular(15)),
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(head,style: const TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
            ),
          ),
           const SizedBox(height: 10,),
          
          Container(
            height: 200,
            width: double.maxFinite,
            decoration: BoxDecoration(color: const Color.fromARGB(255, 37, 37, 37),
            borderRadius: BorderRadius.circular(15)),
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(description,style: const TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w500),),
            ),
          ),
        ],
      ), 
    );
  }
}