import 'package:equatable/equatable.dart';

import '../../../data/models/get_movie_model.dart';

class HomeScreenState extends Equatable {
  final List<GetMovieModel>? movieList;
  HomeScreenState({this.movieList});

  @override
  List<Object?> get props => [movieList];

  HomeScreenState copyWith({List<GetMovieModel>? movieList}) {
    return HomeScreenState(movieList: movieList ?? this.movieList);
  }
}
