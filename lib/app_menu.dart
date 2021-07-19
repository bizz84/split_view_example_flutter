import 'package:flutter/material.dart';
import 'package:split_view_example_flutter/first_page.dart';
import 'package:split_view_example_flutter/second_page.dart';

// a map of ("page name", WidgetBuilder) pairs
final _availablePages = <String, WidgetBuilder>{
  'First Page': (_) => FirstPage(),
  'Second Page': (_) => SecondPage(),
};

class AppMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Menu')),
      body: ListView(
        // Note: use ListView.builder if there are many items
        children: <Widget>[
          // iterate through the keys to get the page names
          for (var pageName in _availablePages.keys)
            PageListTile(
              pageName: pageName,
            ),
        ],
      ),
    );
  }
}

class PageListTile extends StatelessWidget {
  const PageListTile({
    Key? key,
    this.selectedPageName,
    required this.pageName,
    this.onPressed,
  }) : super(key: key);
  final String? selectedPageName;
  final String pageName;
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      // show a check icon if the page is currently selected
      // note: we use Opacity to ensure that all tiles have a leading widget
      // and all the titles are left-aligned
      leading: Opacity(
        opacity: selectedPageName == pageName ? 1.0 : 0.0,
        child: Icon(Icons.check),
      ),
      title: Text(pageName),
      onTap: onPressed,
    );
  }
}
