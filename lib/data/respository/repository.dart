import 'package:flutter_application_1/data/api_client.dart';

import '../models/get_movie_model.dart';

class Repository {
  final apiClient = ApiClient();
   Future<List<GetMovieModel>> movieGetAPI()async{
        return await apiClient.movieGetAPI();
   }
} 
