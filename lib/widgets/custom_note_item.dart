import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.noteModel});
  final NoteModel noteModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return const EditNoteView();
            },
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.only(left: 16, top: 16, bottom: 16),
        margin: const EdgeInsets.symmetric(vertical: 8),
        decoration: BoxDecoration(
          color: Colors.orangeAccent,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding: EdgeInsets.zero,
              title:  Text(
                noteModel.title,
                style: TextStyle(color: Colors.black, fontSize: 26),
              ),
              subtitle:  Padding(
                padding: EdgeInsets.only(top: 16.0, bottom: 16),
                child: Text(
                  noteModel.subTitle,
                  style: TextStyle(color: Colors.black26, fontSize: 18),
                ),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: const Icon(
                  FontAwesomeIcons.trash,
                  color: Colors.black,
                  size: 24,
                ),
              ),
            ),
             Padding(
              padding: EdgeInsets.only(right: 16.0),
              child: Text(
                noteModel.date,
                style: TextStyle(color: Colors.black26, fontSize: 12),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
