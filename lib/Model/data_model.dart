class DataModel {
  int id;
  int userId;
  String title;
  String body;

  DataModel(
      {required this.id,
      required this.userId,
      required this.title,
      required this.body});

  factory DataModel.fromMap(Map<String, dynamic> map) {
    return  DataModel(
      id: map['id'] as int,
      userId: map['userId'] as int,
      title: map['title'] as String,
      body: map['body'] as String,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': this.id,
      'userId': this.userId,
      'title': this.title,
      'body': this.body,
    } as Map<String, dynamic>;
  }
}
