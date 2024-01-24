import '../models/post.dart';
import '../models/profiledetails.dart';
import '../utils/imports.dart';
import 'package:http/http.dart';
import 'dart:convert';

class API {
  Post post = new Post();
  ProfileDetails profile = new ProfileDetails();
  List<Post> posts = [];

  Future<dynamic> getProfile() async {
    Response response = await get(
        Uri.parse('https://instagram-profile1.p.rapidapi.com/getid/13506898'),
        headers: {
          "X-RapidAPI-Key":
              "c4785495fdmshece188a6182be5ap1dabf2jsn53061cf2749f",
          "X-RapidAPI-Host": "instagram-profile1.p.rapidapi.com"
        });
    Map data = jsonDecode(response.body);
    int i = 0;
    int j = 0;

    if (response.statusCode == 200) {
      //while (i < data.length) {
      profile.username = data['username'];
      profile.fullname = data['full_name'];
      profile.followers = data['followers'];
      profile.following = data['following'];
      profile.profile_picture = data['profile_pic_url'];
      print(profile.username);
      // }
    } else {
      throw new Exception("Could not get profile. Status code " +
          response.statusCode.toString());
    }
    return profile;
  }

  Future<dynamic> getPosts() async {
    Response response = await get(
        Uri.parse(
            'https://instagram174.p.rapidapi.com/api/v1/user/25025320/feed?max_id=2796754904080592191_25025320'),
        headers: {
          "X-RapidAPI-Key":
              "c4785495fdmshece188a6182be5ap1dabf2jsn53061cf2749f",
          "X-RapidAPI-Host": "instagram174.p.rapidapi.com"
        });
    Map data = jsonDecode(response.body);
    List pdata = data['result'];
    //print(data['result']);
    //print(data['result'][25]['like_count']);
    int i = 0;
    int j = 0;

    if (response.statusCode == 200) {
      while (i < pdata.length) {
        //while (j < posts.length) {
        Post post = new Post();
        post.user_name = data['result'][i]['user_name'];
        post.like_count = data['result'][i]['like_count'];
        post.caption = data['result'][i]['media_caption'][0]['text'];
        post.media = data['result'][i]['media_layout'][0]['image']['url'];
        //post.height = data['result'][i]['media_layout'][0]['image']['height'];
        //post.width = data['result'][i]['media_layout'][0]['image']['width'];
        posts.add(post);
        //print(post.like_count);
        i++;
        j++;
        // }
      }
      print(posts.length);
    } else {
      throw new Exception(
          "Could not get posts. Status code " + response.statusCode.toString());
    }
    return posts;
  }
}
