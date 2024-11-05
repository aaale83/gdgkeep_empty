import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gdg_keep/models/gdg_note.dart';
import 'package:gdg_keep/widgets/left_menu.dart';
import 'package:gdg_keep/widgets/notes_grid_view.dart';
import 'package:gdg_keep/widgets/top_bar.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GDGKeep(),
    )
  );
}

class GDGKeep extends StatefulWidget {
  const GDGKeep({super.key});

  @override
  State<GDGKeep> createState() => _GDGKeepState();
}

class _GDGKeepState extends State<GDGKeep> {
  List<GDGNote> _list = [];

  bool _isLoading = true;
  int _columns = 4;
  double _screenWidth = 0;

  @override
  void initState() {
    super.initState();
    _loadJson();
  }

  @override
  Widget build(BuildContext context) {
    _screenWidth = MediaQuery.sizeOf(context).width;

    if (_screenWidth < 800) {
      _columns = 1;
    } else if (_screenWidth < 1200) {
      _columns = 2;
    } else {
      _columns = 4;
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(),
      floatingActionButton: Container()
    );

  }

  Future _loadJson() async {
    await Future.delayed(const Duration(seconds: 2));

    String jsonString = await rootBundle.loadString('assets/json/notes.json');

    var jsonResponse = json.decode(jsonString);
    for (var singleValue in jsonResponse) {
      _list.add(GDGNote.fromJson(singleValue));
    }

    setState(() {
      _isLoading = false;
    });
  }

}
