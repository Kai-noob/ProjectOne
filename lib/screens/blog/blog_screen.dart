import 'package:flutter/material.dart';
import 'package:flutterproject/helpers/custom_suffixicon.dart';


class BlogScreen extends StatelessWidget {
  const BlogScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation:0.0,
          title: Text("Blogs", style: TextStyle(color: Colors.black)),
          centerTitle: true,
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.favorite_outline,color: Colors.black,))
          ],
        ),
      body: Center(child: Text("Blog"),),
    );
  }
}