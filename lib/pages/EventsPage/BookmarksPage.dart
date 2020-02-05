import 'package:flutter/material.dart';
import 'package:kide/models/EventCategory.dart';
import 'package:kide/models/SubEvent.dart';
import 'package:kide/pages/EventsPage/widgets/EntryItem.dart';
import 'package:kide/providers/bookmarks.dart';
import 'package:provider/provider.dart';

class BookmarksPage extends StatelessWidget {
  static const routeName = '/BookmarksPage';
  // final List<SubEvent> bookmarks;

  // BookmarksPage({this.bookmarks});
  
  @override
  Widget build(BuildContext context) {
    final _bookmarks = Provider.of<Bookmarks>(context);
    print(_bookmarks.bookmarks);
    
    return  Scaffold(
        appBar: AppBar(
          title: Text("Bookmarks"),
        ),
        body: ListView.builder(
            itemBuilder: (BuildContext context, int index) =>
                EntryItem(_bookmarks.bookmarks[index]),
            itemCount: _bookmarks.bookmarks.length,
            padding: const EdgeInsets.fromLTRB(8.0, 16.0, 8.0, 16.0),
          ),
        backgroundColor: Color.fromRGBO(18, 18, 18, 1.0),
    );
  }
}