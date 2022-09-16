// class UserModel {
//   int? id;
//   String? name;
//   String? username;
//   String? email;
//   String? phone;
//   String? website;
//
//   UserModel(
//       {this.id,
//         this.name,
//         this.username,
//         this.email,
//         this.phone,
//         this.website});
//
//   UserModel.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     name = json['name'];
//     username = json['username'];
//     email = json['email'];
//     phone = json['phone'];
//     website = json['website'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['name'] = this.name;
//     data['username'] = this.username;
//     data['email'] = this.email;
//     data['phone'] = this.phone;
//     data['website'] = this.website;
//     return data;
//   }
// }

class UserModel {
  int? postId;
  int? id;
  String? name;
  String? email;
  String? body;

  UserModel({this.postId, this.id, this.name, this.email, this.body});

  UserModel.fromJson(Map<String, dynamic> json) {
    postId = json['postId'];
    id = json['id'];
    name = json['name'];
    email = json['email'];
    body = json['body'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['postId'] = this.postId;
    data['id'] = this.id;
    data['name'] = this.name;
    data['email'] = this.email;
    data['body'] = this.body;
    return data;
  }
}