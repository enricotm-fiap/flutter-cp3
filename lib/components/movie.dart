class Movie {
  String title;
  String year;
  String genre;
  String screentime;
  String synopsis;
  String image;
  bool favorite = false;
  double score = 0;

  String getSubtitle(){
    return '$year - $genre - $screentime';
  }

  Movie({required this.title, required this.year, required this.genre, required this.screentime, required this.synopsis, required this.image});
}
