class Urls{
  static String baseURL = 'https://jsonplaceholder.typicode.com/';
  static String getpost = '$baseURL/posts';
  static String createpost = '$baseURL/posts';
  static String deletepost(String id) => '$baseURL/posts/$id';




}