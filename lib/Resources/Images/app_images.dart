

// class AppImages{
//   static const String catImg_0 = "assets/images/pic_0.png";
//   static const String catImg_1 = "assets/images/pic_1.png";

// }

class AppImages{
  static String? catImg(int index){
    return "assets/images/pic_$index.png";
  }
}