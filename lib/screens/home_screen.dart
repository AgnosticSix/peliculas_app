import 'package:flutter/material.dart';
import 'package:peliculas_app/providers/movies_provider.dart';
import 'package:peliculas_app/search/search_delegate.dart';
import 'package:peliculas_app/widgets/widgets.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final moviesProvider = Provider.of<MoviesProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Peliculas en cines'),
        elevation: 0,
        actions: [
          IconButton(
              onPressed: () => showSearch(
                    context: context,
                    delegate: MovieSeachDelegate(),
                  ),
              icon: const Icon(Icons.search_outlined)),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Tarjetas principales
            CardSwiper(movies: moviesProvider.onDisplayMovies),

            //Slider de peliculas
            MovieSlider(
              movies: moviesProvider.popularMovies, //populares
              title: 'Populares!', //opcional
              onNextPage: () => moviesProvider.getPopularMovies(),
            ),
            // MovieSlider(
            //   movies: moviesProvider.popularMovies, //populares
            //   title: 'Populares!', //opcional
            // ),
            // MovieSlider(
            //   movies: moviesProvider.popularMovies, //populares
            //   title: 'Populares!', //opcional
            // ),
            // MovieSlider(
            //   movies: moviesProvider.popularMovies, //populares
            //   title: 'Populares!', //opcional
          ],
        ),
      ),
    );
  }
}
