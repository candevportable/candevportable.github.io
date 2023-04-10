import 'package:flutter/material.dart';
import 'package:wordpress_client/responses.dart';
import 'package:wordpress_client/wordpress_client.dart';
import 'package:flutter_html/flutter_html.dart';

class PostView extends StatefulWidget {
  final Post _post;
  final Media _media;

  const PostView(this._post, this._media, {Key? key}) : super(key: key);

  @override
  State<PostView> createState() => _PostViewState();
}

class _PostViewState extends State<PostView> {
  late WordpressClient client;
  late WordpressResponse<List<Post>?> postsResponse;
  Post post = Post();
  Media media = Media();

  @override
  void initState() {
    super.initState();
  }

  _loadContent() {
    post = widget._post;
    media = widget._media;

    return post;
  }

  @override
  Widget build(BuildContext context) {
    _loadContent();

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            // leading: const BackButton(
            //   color: Color(0XFFFFFF),
            // ),
            backgroundColor: Colors.transparent,
            expandedHeight: 300,
            floating: true,
            flexibleSpace: FlexibleSpaceBar(
              titlePadding: EdgeInsets.all(20),
              title: Text(
                post.title?.parsedText as String,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              background: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    colorFilter: ColorFilter.mode(
                      Colors.blueGrey.withOpacity(0.7),
                      BlendMode.srcOver,
                    ),
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      media.sourceUrl!,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 8),
                child: Html(
                  data: post.content?.rendered,
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
