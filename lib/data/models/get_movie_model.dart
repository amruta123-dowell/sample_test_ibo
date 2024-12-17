class GetMovieModel {
  String? title;
  String? type;
  String? titlereleased;
  String? imageLandscape;
  String? imagePortrait;
  String? rating;
  String? quality;
  String? actors;
  String? director;
  String? category;
  String? imdb;
  String? runtime;
  String? netflixid;
  String? dateReleased;
  String? description;
  String? language;

  GetMovieModel(
      {this.title,
      this.type,
      this.titlereleased,
      this.imageLandscape,
      this.imagePortrait,
      this.rating,
      this.quality,
      this.actors,
      this.director,
      this.category,
      this.imdb,
      this.runtime,
      this.netflixid,
      this.dateReleased,
      this.description,
      this.language});

  GetMovieModel.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    type = json['type'];
    titlereleased = json['titlereleased'];
    imageLandscape = json['image_landscape'];
    imagePortrait = json['image_portrait'];
    rating = json['rating'];
    quality = json['quality'];
    actors = json['actors'];
    director = json['director'];
    category = json['category'];
    imdb = json['imdb'];
    runtime = json['runtime'];
    netflixid = json['netflixid'];
    dateReleased = json['date_released'];
    description = json['description'];
    language = json['language'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['type'] = this.type;
    data['titlereleased'] = this.titlereleased;
    data['image_landscape'] = this.imageLandscape;
    data['image_portrait'] = this.imagePortrait;
    data['rating'] = this.rating;
    data['quality'] = this.quality;
    data['actors'] = this.actors;
    data['director'] = this.director;
    data['category'] = this.category;
    data['imdb'] = this.imdb;
    data['runtime'] = this.runtime;
    data['netflixid'] = this.netflixid;
    data['date_released'] = this.dateReleased;
    data['description'] = this.description;
    data['language'] = this.language;
    return data;
  }
}
