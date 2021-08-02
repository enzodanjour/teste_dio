import 'package:flutter/material.dart';
import 'package:teste_dio/models/post.dart';


class PagePostWidget extends StatefulWidget {
  Future<Post> post;
  PagePostWidget({
    Key key,
    this.post
  }) : super(key: key);

  @override
  _PagePostWidgetState createState() => _PagePostWidgetState();
}

class _PagePostWidgetState extends State<PagePostWidget> {
  


  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder<Post>(
        future: widget.post,
        builder: (context,snapshot) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(snapshot.data.titulo),
                Text(snapshot.data.texto),
                // Image.asset( + snapshot.data.foto,
                //   width: 100,
                //   height: 100,
                // )
              ],
        ),
      );
        },
      ),
    );
  }
}
