import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List notes = [
    {"note": "Apaah nooootaaaaa", "image": "1.jpg"},
    {"note": "Apaah nooootaaaaa", "image": "2.png"},
    {"note": "Apaah nooootaaaaa", "image": "3.png"},
    {"note": "Apaah nooootaaaaa", "image": "4.jpg"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed('addnotes');
        },
        child: const Icon(Icons.add),
      ),
      // ignore: avoid_unnecessary_containers
      body: Container(
        child: ListView.builder(
          itemCount: notes.length,
          itemBuilder: ((context, index) {
            return Dismissible(
              key: Key("$index"),
              child: ListNotes(
                notes: notes[index],
              ),
            );
          }),
        ),
      ),
    );
  }
}

class ListNotes extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final notes;
  // ignore: use_key_in_widget_constructors
  const ListNotes({this.notes});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Image.asset(
              "images/${notes['image']}",
              fit: BoxFit.cover,
              height: 120,
            ),
          ),
          Expanded(
            flex: 6,
            child: ListTile(
              title: const Text('Title'),
              subtitle: Text("${notes['note']}"),
            ),
          ),
          Expanded(
            flex: 1,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.edit,
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.delete,
              ),
            ),
          )
        ],
      ),
    );
  }
}
