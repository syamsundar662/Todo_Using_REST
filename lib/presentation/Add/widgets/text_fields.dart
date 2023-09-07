
import 'package:flutter/material.dart';

class TextFields extends StatelessWidget {
  const TextFields({
    super.key,
    required this.titleController,
    required this.descriptionController,
  });

  final TextEditingController titleController;
  final TextEditingController descriptionController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
            child: TextField(
              controller: titleController,
          decoration: InputDecoration(
            hintText: 'Heading',
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              fillColor: const Color.fromARGB(255, 46, 46, 46),
              filled: true,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              )),
          style: const TextStyle(
              color: Color.fromARGB(255, 255, 255, 255),
              fontSize: 20,
              fontWeight: FontWeight.bold),
          keyboardType: TextInputType.multiline,
          cursorColor: Colors.white,
         )
        ),
         const SizedBox(height: 8,),
        SizedBox(
            height: 200,
            child: TextField(
              maxLines: 10,
              controller: descriptionController,
              decoration: InputDecoration(
                hintText: 'Description',
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  fillColor: const Color.fromARGB(255, 46, 46, 46),
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  )),
              style:  const TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontSize: 17,
                  fontWeight: FontWeight.bold),
              keyboardType: TextInputType.multiline,
              cursorColor: Colors.white,
            )),
      ],
    );
  }
}
