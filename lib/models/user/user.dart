import 'package:wordpress_client/responses.dart';

class User {
  String? name;
  String? uuid;
  String? email;
  String? password;
  String? phone;
  String? appPhone;
  List<Post>? posts;

  User({this.name, this.uuid, this.email, this.posts, this.appPhone, this.password, this.phone});

  User.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    uuid = json['uuid'];
    email = json['email'];
    phone = json['phone'];
    appPhone = json['appPhone'];
    if (json['posts'] != null) {
      posts = <Post>[].cast<Post>();
      json['posts'].forEach((v) {
        posts!.add(Post.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['uuid'] = uuid;
    data['email'] = email;
    data['phone'] = phone;
    data['appPhone'] = appPhone;
    if (posts != null) {
      data['posts'] = posts!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
