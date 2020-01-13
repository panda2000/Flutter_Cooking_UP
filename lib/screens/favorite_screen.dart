import 'package:flutter/material.dart';

import '../widgets/main_drawer.dart';

class FavoriteScreen extends StatelessWidget {
  static final String routeName = '/favorite-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar (title: Text('My Filters'),),
      drawer: MainDrawer(),
      body: Center(
        child: Text ('Favorite'),
      ),
    );

  }
}
