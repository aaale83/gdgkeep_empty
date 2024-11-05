import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:gdg_keep/models/gdg_note.dart';

class NotesGridView extends StatelessWidget {
  final List<GDGNote> list;
  final int columns;

  const NotesGridView({
    super.key,
    required this.list,
    required this.columns,
  });

  @override
  Widget build(BuildContext context) {
    // return SizedBox();
    return SizedBox(
      width: MediaQuery.sizeOf(context).width - 300,
      child: MasonryGridView.count(
        physics: const BouncingScrollPhysics(),
        itemCount: list.length,
        crossAxisCount: columns,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.fromLTRB(0, 24, 24, 0),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
                color: Color(int.parse("0xFF${list[index].colore!}")),
                borderRadius: BorderRadius.circular(12)
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  list[index].titolo!,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(list[index].testo!),
              ]
            ),
          );
        },
      ),
    );
  }
}
