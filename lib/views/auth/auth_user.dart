import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../consts/consts.dart';

class AuthController extends GetxController {
  var emailController = TextEditingController();
  var passController = TextEditingController();

  Future<UserCredential?> loginMethod({context}) async {
    UserCredential? userCredential;
    try {
      await auth.signInWithEmailAndPassword(
          email: emailController.text, password: passController.text);
    } on FirebaseAuthException catch (e) {
      VxToast.show(context, msg: e.toString());
    }
    return userCredential;
  }

  //signin
  Future<UserCredential?> signupMethod({email, password, context}) async {
    UserCredential? userCredential;
    try {
      await auth.createUserWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseAuthException catch (e) {
      VxToast.show(context, msg: e.toString());
    }
    return userCredential;
  }

  //storing

  storeUserData({name, password, email, address, type}) async {
    DocumentReference store =
        await firestore.collection(usersCollection).doc(currentUser!.uid);
    store.set({
      'name': name,
      'password': password,
      'email': email,
      'address': address,
      'type': type,
    });
  }

  //signout
  signoutMethod(context) async {
    try {
      await auth.signOut();
    } catch (e) {
      VxToast.show(context, msg: e.toString());
    }
  }
}
