
import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';

import '../model/post_model.dart';
import 'package:http/http.dart' as http;

import '../utils/urls.dart';

class APIVIEW extends StatefulWidget {
  const APIVIEW({super.key});

  @override
  State<APIVIEW> createState() => _APIVIEWState();
}

class _APIVIEWState extends State<APIVIEW> {
  List<postModel> posts =[];

  Future<void>fetchposts() async {
    final response = await http.get(Uri.parse(Urls.getpost));
   log(response.toString());
    if(response.statusCode == 200){
      List data = json.decode(response.body);
      
      setState(() {
        posts = data.map((e)=>postModel.fromJson(e)).toList();
      });
    } else{

    }

  }


  Future<void>deleteposts(String id) async {
    final response = await http.delete(Uri.parse(Urls.deletepost(id)));
    log(response.statusCode.toString());
    log(response.body.toString());
    if(response.statusCode == 200){
     await fetchposts();
     setState(() {

     });
    } else{

    }

  }


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchposts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('posts'),
      ),
      body: ListView.builder(
        itemCount: posts.length,
          itemBuilder: (context,index){
          final post = posts[index];
            return Card(
              child: ListTile(
                title: Text(post.title.toString()),
                subtitle: Text(post.body.toString()),
                trailing: IconButton(onPressed: (){
                  deleteposts(post.id.toString());
                }, icon: Icon(Icons.delete,color: Colors.red,)),
              ),
            );
          }
      ),
    );
  }
}
