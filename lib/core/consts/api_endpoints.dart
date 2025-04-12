class ApiConsts {
  static String upComingMoviesUrl =
      'https://api.themoviedb.org/3/movie/upcoming?language=en-US&page=1';
  static String popularMoviesUrl =
      'https://api.themoviedb.org/3/movie/popular?language=en-US&page=1';
  static String prefixToken = 'Bearer';
  static String key =
      'eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJhYWNjMjlmYWE2NTg0ZmQ1OTJmMzFhZDRlNDk1YmFiZiIsIm5iZiI6MTYxOTQ3MTg0NS41MTYsInN1YiI6IjYwODcyZGU1ODQ0NDhlMDA1OWYzY2MxNyIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.i_4qiWrU33jQA1WE9nc_2HoHND_EVY87ZyfLnrV28pA';
  static String token = '$prefixToken $key';
}
