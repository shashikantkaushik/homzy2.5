class ReqModel {
  String name;
  String about;
  String reqPic;
  String createdAt;
  String phoneNumber;
  String uid;

  ReqModel({
    required this.name,
    required this.about,
    required this.reqPic,
    required this.createdAt,
    required this.phoneNumber,
    required this.uid,
  });

  // from map
  factory ReqModel.fromMap(Map<String, dynamic> map) {
    print("as1df");
    return ReqModel(


      name: map['name'] ?? '',
      about: map['about'] ?? '',
      uid: map['uid'] ?? '',
      phoneNumber: map['phoneNumber'] ?? '',
      createdAt: map['createdAt'] ?? '',
      reqPic: map['reqPic'] ?? '',
    );
  }

  // to map
  Map<String, dynamic> toMap() {
    print("a2sdf");
    return {

      "name": name,
      "uid": uid,
      "about": about,
      "reqPic": reqPic,
      "phoneNumber": phoneNumber,
      "createdAt": createdAt,
    };
  }
}
