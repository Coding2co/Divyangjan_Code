
import 'package:divyangjan_frontend/screens/registration_screen.dart';
import 'package:divyangjan_frontend/screens/signin_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';


class AuthenticationRepository extends GetxController{
  static AuthenticationRepository get instance => Get.put(AuthenticationRepository());

  final _auth = FirebaseAuth.instance;
  late final Rx<User?> firebaseUser;

  @override
  void onReady() {
    firebaseUser = Rx<User?>(_auth.currentUser);
    firebaseUser.bindStream(_auth.userChanges());
    ever(firebaseUser, _setintinalScreen);
   
  }


  _setintinalScreen(User? user) {
    user == null ? Get.off(()=> SignInScreen()) : Get.offAll(()=> RegistrationScreen());
  }
}