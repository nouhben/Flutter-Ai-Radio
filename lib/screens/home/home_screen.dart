import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:radio_ai/providers/my_theme_provider.dart';
import 'package:radio_ai/shared/size_config.dart';

import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          'Ai Radio',
          style: Theme.of(context).textTheme.headline4,
        ),
      ),
      drawer: Drawer(
        child: SafeArea(
          child: Column(
            children: [
              FlatButton.icon(
                onPressed: () {
                  Provider.of<MyThemeModel>(context).changeThem();
                },
                icon: Icon(Icons.settings),
                label: Text('settings'),
              ),
            ],
          ),
        ),
      ),
      body: Body(),
    );
  }
}
