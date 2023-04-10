import 'package:wordpress_client/requests.dart';
import 'package:wordpress_client/responses.dart';
import 'package:wordpress_client/wordpress_client.dart';

class BlogController {
  WordpressClient client = WordpressClient.initialize(
    'http://candev.x10.bz/',
    'wp/wp-json/wp/v2',
  );

  late WordpressResponse<List<Post>?> postsResponse;
  late WordpressResponse<List<Tag>?> tagsResponse;
  late List<Post?> posts;
  late List<Tag?> tags;

  Future<List<Post?>> _fetchPosts() async {
    postsResponse = await client.posts.list(
      WordpressRequest(
        requestData: ListPostRequest()
          ..page = 1
          ..perPage = 99
          ..order = Order.asc
          ..orderBy = OrderBy.date,
      ),
    );
    posts = postsResponse.data!;
    return posts;
  }

  Future<Media?> _fetchMedia(Post post) async {
    late Media? media;
    media = await post.getMedia(client);
    return media;
  }

  Future<List<Tag?>> _fetchTags() async {
    tagsResponse = await client.tags.list(
      WordpressRequest(
        requestData: ListTagRequest()
          ..page = 1
          ..perPage = 99
          ..order = Order.asc
          ..orderBy = OrderBy.name,
      ),
    );
    tags = tagsResponse.data!;
    return tags;
  }
}
