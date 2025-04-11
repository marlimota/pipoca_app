import 'package:flutter/material.dart';
import 'package:pipoca_app/presentation/widgets/horizontal_movie_list.dart';
import 'package:pipoca_app/presentation/widgets/page_title.dart';
import 'package:pipoca_app/presentation/widgets/vertical_movie_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Pipoca Movies')),
      backgroundColor: Colors.grey[900],
      body: Column(
        children: [
          PageTitle(title: 'Tendências'),
          HorizontalMovieList(movieList: []),
          PageTitle(title: 'Populares'),
          VerticalMovieList(movieList: []),
        ],
      ),
    );
  }
}
