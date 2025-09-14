import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 16, top: 16, bottom: 16),
      margin: const EdgeInsets.only(left: 16, right: 16, bottom: 8),
      decoration: BoxDecoration(
        color: Colors.orangeAccent,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            contentPadding: EdgeInsets.zero,
            title: const Text(
              'Flutter Tips',
              style: TextStyle(color: Colors.black, fontSize: 26),
            ),
            subtitle: const Padding(
              padding: EdgeInsets.only(top: 16.0, bottom: 16),
              child: Text(
                'Build your career with Ahmed Hush',
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
          const Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: Text(
              'May 21, 2022',
              style: TextStyle(color: Colors.black26, fontSize: 12),
            ),
          ),
        ],
      ),
    );
  }
}
