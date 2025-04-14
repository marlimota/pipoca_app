class ApiConsts {
  static String upComingMoviesUrl =
      'https://api.themoviedb.org/3/movie/upcoming?language=en-US&page=1';
  static String popularMoviesUrl =
      'https://api.themoviedb.org/3/movie/popular?language=en-US&page=1';
  static String prefixToken = 'Bearer';
  static String key = '';
  static String token = '$prefixToken $key';
}
