import 'package:flutter/material.dart';
import 'package:split_view_example_flutter/page_scaffold.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageScaffold(
      title: 'Second Page',
      body: Center(
        child:
            Text('Second Page', style: Theme.of(context).textTheme.headline4),
      ),
    );
  }
}
