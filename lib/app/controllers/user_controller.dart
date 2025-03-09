import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserController extends GetxController {
  final isLogged = false.obs;
  final emailUsr = ''.obs;
  final displayName = ''.obs;
  final photoURL = ''.obs;

  final nameController = TextEditingController(text: 'Gustavo Falavigna');
  final emailController = TextEditingController(text: 'gfalav@yahoo.com');
  final passwordController = TextEditingController(text: 'pppppppp');
  final repasswordController = TextEditingController(text: 'pppppppp');
  final oldPasswordController = TextEditingController(text: 'pppppppp');

  @override
  void onInit() {
    subscribeAuthChanges();
    ever(isLogged, (callback) => routeIsLogged());
    super.onInit();
  }

  void subscribeAuthChanges() {
    FirebaseAuth.instance.authStateChanges().listen(
      (User? user) {
        if (user != null) {
          isLogged.value = true;
          emailUsr.value = user.email != null ? user.email! : '';
          displayName.value = user.displayName != null ? user.displayName! : '';
          photoURL.value = user.photoURL != null ? user.photoURL! : '';
        } else {
          isLogged.value = false;
          emailUsr.value = '';
          displayName.value = '';
          photoURL.value = '';
        }
      },
    );
  }

  Future<void> signUp() async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );
    } on FirebaseAuthException catch (e) {
      Get.snackbar(
        "Error on SignUp",
        e.message!,
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: const Color.fromARGB(91, 142, 147, 254),
        duration: const Duration(seconds: 5),
      );
    }
  }

  Future<void> signIn() async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );
    } on FirebaseAuthException catch (e) {
      Get.snackbar(
        "Error on SignIn",
        e.message!,
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: const Color.fromARGB(91, 142, 147, 254),
        duration: const Duration(seconds: 5),
      );
    }
  }

  Future<void> signOut() async {
    try {
      await FirebaseAuth.instance.signOut();
    } on FirebaseAuthException catch (e) {
      Get.snackbar(
        "Error on SignOut",
        e.message!,
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: const Color.fromARGB(91, 142, 147, 254),
        duration: const Duration(seconds: 5),
      );
    }
  }

  Future<void> sendEmailVerification() async {
    try {
      await FirebaseAuth.instance.currentUser!.sendEmailVerification();
    } on FirebaseAuthException catch (e) {
      Get.snackbar(
        "Error sending email verification",
        e.message!,
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: const Color.fromARGB(91, 142, 147, 254),
        duration: const Duration(seconds: 5),
      );
    }
  }

  Future<void> updatePassword(String password) async {
    try {
      await FirebaseAuth.instance.currentUser!.updatePassword(password);
    } on FirebaseAuthException catch (e) {
      Get.snackbar(
        "Error updating password",
        e.message!,
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: const Color.fromARGB(91, 142, 147, 254),
        duration: const Duration(seconds: 5),
      );
    }
  }

  Future<void> resetPassword(String email) async {
    try {
      await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
    } on FirebaseAuthException catch (e) {
      Get.snackbar(
        "Error reseting password",
        e.message!,
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: const Color.fromARGB(91, 142, 147, 254),
        duration: const Duration(seconds: 5),
      );
    }
  }

  Future<void> updateDisplayName(String displayName) async {
    try {
      await FirebaseAuth.instance.currentUser!.updateDisplayName(displayName);
    } on FirebaseAuthException catch (e) {
      Get.snackbar(
        "Error updating display name",
        e.message!,
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: const Color.fromARGB(91, 142, 147, 254),
        duration: const Duration(seconds: 5),
      );
    }
  }

  Future<void> updatePhotoURL(String photoURL) async {
    try {
      await FirebaseAuth.instance.currentUser!.updatePhotoURL(photoURL);
    } on FirebaseAuthException catch (e) {
      Get.snackbar(
        "Error updating photo URL",
        e.message!,
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: const Color.fromARGB(91, 142, 147, 254),
        duration: const Duration(seconds: 5),
      );
    }
  }

  void routeIsLogged() {
    if (isLogged.value) {
      Get.offAllNamed("/home");
    } else {
      Get.offAllNamed("/signin");
    }
  }
}
