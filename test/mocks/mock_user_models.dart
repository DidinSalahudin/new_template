import 'package:new_template/features/posts/data/models/post_model.dart';
import 'package:new_template/features/user/data/models/user_model.dart';

final userModel = UserModel(
  data: <UserModelData>[
    UserModelData(
      id: "60d0fe4f5311236168a109ca",
      title: "ms",
      firstName: "Sara",
      lastName: "Andersen",
      picture: "https://randomuser.me/api/portraits/women/58.jpg",
    ),
    UserModelData(
      id: "60d0fe4f531123",
      title: "ms 2",
      firstName: "Sara 2",
      lastName: "Andersen 2",
      picture: "https://randomuser.me/api/portraits/women/58.jpg",
    ),
  ],
);

final postModel = PostModel(
  data: <PostModelData>[
    PostModelData(
      id: "60d21b4667d0d8992e610c85",
      image: "https://img.dummyapi.io/photo-1564694202779-bc908c327862.jpg",
      likes: 43,
      tags: ["animal", "dog", "golden retriever"],
      text: "adult Labrador retriever",
      publishDate: "2020-05-24T14:53:17.598Z",
      owner: UserModelData(
        id: "60d0fe4f5311236168a109ca",
        title: "ms",
        firstName: "Sara",
        lastName: "Andersen",
        picture: "https://randomuser.me/api/portraits/women/58.jpg",
      ),
    ),
    PostModelData(
      id: "60d21b4667d0d8992e610c85",
      image: "https://img.dummyapi.io/photo-1564694202779-bc908c327862.jpg",
      likes: 43,
      tags: ["animal", "dog", "golden retriever"],
      text: "adult Labrador retriever",
      publishDate: "2020-05-24T14:53:17.598Z",
      owner: UserModelData(
        id: "60d0fe4f5311236168a109ca",
        title: "ms",
        firstName: "Sara",
        lastName: "Andersen",
        picture: "https://randomuser.me/api/portraits/women/58.jpg",
      ),
    ),
  ],
);
