import 'package:flutter/material.dart';
import 'package:pipoca_app/presentation/widgets/appbar_title.dart';
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
      appBar: AppBar(
        title: AppBarTitle(),
        backgroundColor: const Color.fromARGB(255, 29, 28, 28),
      ),
      backgroundColor: const Color.fromARGB(255, 56, 56, 56),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
