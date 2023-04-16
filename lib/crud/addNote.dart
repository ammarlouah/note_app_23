import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class AddNotes extends StatefulWidget {
  const AddNotes({super.key});

  @override
  State<AddNotes> createState() => _AddNotesState();
}

class _AddNotesState extends State<AddNotes> {
  File? image;
  final imgPk = ImagePicker();
  uploadImage(ImageSource src) async {
    var picked = await imgPk.pickImage(source: src);
    if (picked != null) {
      setState(() {
        image = File(picked.path);
      });
      Navigator.pop(context);
    }
    ;
  }

  showBottomSheet() {
    return showModalBottomSheet(
      context: context,
      builder: (context) {
        return SizedBox(
          height: 160,
          child: Container(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "Please chose an image",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () => uploadImage(ImageSource.gallery),
                        child: Column(
                          children: const [
                            Icon(Icons.photo_album_outlined, size: 40),
                            Text(
                              "Gallery",
                              style: TextStyle(fontSize: 15),
                            ),
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: () => uploadImage(ImageSource.camera),
                        child: Column(
                          children: const [
                            Icon(Icons.camera_alt_outlined, size: 40),
                            Text(
                              "Camera",
                              style: TextStyle(fontSize: 15),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Note'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(5),
          child: Column(
            children: [
              Form(
                  child: Column(
                children: [
                  TextFormField(
                    maxLength: 30,
                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      labelText: "Note title",
                      prefixIcon: Icon(Icons.note),
                    ),
                  ),
                  TextFormField(
                    minLines: 1,
                    maxLines: 3,
                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      labelText: "Note",
                      prefixIcon: Icon(Icons.note),
                    ),
                  ),
                  TextButton(
                    style: const ButtonStyle(
                      maximumSize: MaterialStatePropertyAll(
                        Size.fromWidth(200),
                      ),
                    ),
                    onPressed: () {
                      showBottomSheet();
                    },
                    child: Row(
                      children: const [
                        Icon(Icons.upload_file),
                        Text("Upload image"),
                      ],
                    ),
                  ),
                  image == null ? Text("Not photo chosen") : Image.file(image!),
                  SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: const ButtonStyle(
                      padding: MaterialStatePropertyAll(
                        EdgeInsets.all(20),
                      ),
                    ),
                    child: const Text('Add Note'),
                  ),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
