import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:groovvee/views/core/extensions.dart';



class DetailsMovies extends StatefulWidget {
  const DetailsMovies({Key? key}) : super(key: key);

  @override
  _DetailsMoviesState createState() => _DetailsMoviesState();
}

class _DetailsMoviesState extends State<DetailsMovies> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: context.screenHeight,
          width: context.screenWidth,
        ),
      ),
    );
  }
}
