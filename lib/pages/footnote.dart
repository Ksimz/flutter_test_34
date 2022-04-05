import 'package:flutter/material.dart';
import '../utils/fakedata.dart';
import '../components/note.dart';

class FootNote extends StatefulWidget {
  const FootNote({Key? key}) : super(key: key);

  @override
  _FootNoteState createState() => _FootNoteState();
}

class _FootNoteState extends State<FootNote> {
  String noteTitle = "";
  String noteContent = "";
  bool isLoading = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Notes"),
        backgroundColor: Colors.blue,
      ),
      body: ListView(children: [
        ListView.builder(
          itemBuilder: (context, index) {
            return const ListTile(
              title: Text("test"),
              leading: Icon(Icons.notes),
              subtitle: Text("the notes"),
            );
          },
          shrinkWrap: true,
          itemCount: mocks.length,
        ),
        const Divider(),
        const Center(
          child: Text(
            "Add A New Note",
            style: TextStyle(color: Colors.blue),
          ),
        ),
        const SizedBox(
          height: 2,
        ),
        _showCircularProgress(),
        const SizedBox(
          height: 5,
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 0.0),
          child: TextFormField(
            maxLines: 1,
            obscureText: false,
            autofocus: false,
            decoration: const InputDecoration(
              hintText: 'Title',
              icon: Icon(
                Icons.title,
                color: Colors.grey,
              ),
            ),
            validator: (value) => value == "" ? 'Title Can\'t be Empty' : null,
            onSaved: (value) => noteTitle = value!,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 0.0),
          child: TextFormField(
            maxLines: 3,
            obscureText: false,
            autofocus: false,
            decoration: const InputDecoration(
              hintText: 'Notes',
              icon: Icon(
                Icons.note_add,
                color: Colors.grey,
              ),
            ),
            validator: (value) => value == "" ? 'Notes Can\'t be Empty' : null,
            onSaved: (value) => noteContent = value!,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        MaterialButton(
          minWidth: 200.0,
          height: 42.0,
          color: Colors.blue,
          child: const Text('Add Note',
              style: TextStyle(fontSize: 15.0, color: Colors.black)),
          onPressed: () {
            print("data sent");
          },
        ),
      ]),
    );
  }

  Widget _showCircularProgress() {
    if (isLoading) {
      return const Center(child: CircularProgressIndicator());
    }
    return Container(
      height: 0.0,
      width: 0.0,
    );
  }
}
