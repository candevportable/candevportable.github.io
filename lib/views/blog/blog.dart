import 'package:flutter/material.dart';
import 'package:wordpress_client/requests.dart';
import 'package:wordpress_client/responses.dart';
import 'package:wordpress_client/wordpress_client.dart';

import '../post/post.dart';

class Blog extends StatefulWidget {
  const Blog({Key? key}) : super(key: key);

  @override
  State<Blog> createState() => _BlogState();
}

class _BlogState extends State<Blog> {
  late WordpressClient client;
  late WordpressResponse<List<Post>?> postsResponse;
  Post post = Post();
  Media media = Media();

  @override
  void initState() {
    super.initState();
  }

  Future<Post>? _loadContent() async {
    WordpressClient client =
        WordpressClient.initialize('http://candev.x10.bz/', 'wp/wp-json/wp/v2');

    postsResponse = await client.posts.list(
      WordpressRequest(
        requestData: ListPostRequest()
          ..page = 1
          ..perPage = 99
          ..order = Order.asc
          ..orderBy = OrderBy.date,
      ),
    );
    post = postsResponse.data![1];
    media = (await post.getMedia(client))!;
    return post;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: const BackButton(
          color: Color(0XFF0A0024),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "CanDev",
          style: TextStyle(
              color: Color(0XFF0A0024),
              fontFamily: "Neuropolitical Rg",
              fontSize: 26),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
          child: FutureBuilder<Post>(
            future: _loadContent(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                if (snapshot.hasError) {
                  return Container(
                    color: Colors.red,
                  );
                }
                if (snapshot.hasData) {
                  var post = snapshot.data as Post;

                  return Card(
                    elevation: 2,
                    color: Colors.white,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => PostView(
                              post,
                              media,
                            ),
                          ),
                        );
                      },
                      child: Column(
                        children: [
                          Container(
                            height: 300,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(
                                  15,
                                ),
                              ),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                  media.sourceUrl ?? "",
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 12),
                            child: ListTile(
                              title: Text(
                                post.title?.parsedText ?? "",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600, fontSize: 20),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                }
              }
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(child: CircularProgressIndicator());
              }
              if (snapshot.connectionState == ConnectionState.active) {
                return const Center(
                    child: CircularProgressIndicator(
                  color: Colors.green,
                  backgroundColor: Colors.grey,
                ));
              }
              if (snapshot.connectionState == ConnectionState.none) {
                return const Center(
                    child: CircularProgressIndicator(
                  color: Colors.red,
                  backgroundColor: Colors.grey,
                ));
              }
              return Container();
            },
          ),
        ),
      ),
    );
  }
}
