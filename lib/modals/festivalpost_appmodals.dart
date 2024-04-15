//Modal class   =>  Structure
class Festival {
  //Attributes
  String name;
  String slogan;
  String post_frame;
  String date;
  int likes = 0;
  bool isLiked = false;

  //Parameterized constructor
  Festival({
    required this.name,
    required this.slogan,
    required this.post_frame,
    required this.date,
  });

  //Factory constructor:  Map =>  Current Class Object
  factory Festival.fromMap({required Map data}) => Festival(
        name: data['category'],
        slogan: data['slogan'],
        post_frame: data['post_frame'],
        date: data['date'],
      );
}

class Festivals {
  //Attributes
  String name;
  String slogan;
  String post_frame;
  String date;
  int likes = 0;
  bool isLiked = false;

  //Parameterized constructor
  Festivals({
    required this.name,
    required this.slogan,
    required this.post_frame,
    required this.date,
  });

  //Factory constructor:  Map =>  Current Class Object
  factory Festivals.fromMap({required Map data}) => Festivals(
        name: data['category'],
        slogan: data['slogan'],
        post_frame: data['post_frame'],
        date: data['date'],
      );
}

class FestivalsCategory {
  String image;
  String category;

  FestivalsCategory({
    required this.image,
    required this.category,
  });

  factory FestivalsCategory.fromMap({required Map data}) => FestivalsCategory(
        category: data['category'],
        image: data['image'],
      );
}
