

import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';
import 'package:multi_vendor/controllers/snack_bar_controller.dart';
import 'package:multi_vendor/views/customer_login_screen.dart';

class AuthController {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final FirebaseStorage _firebaseStorage = FirebaseStorage.instance;


  // UPLOAD SELECTED IMAGE TO FIREBASE STORAGE
  _uploadImageToStorage(Uint8List? image) async {
    Reference ref = _firebaseStorage.ref().child('[profiles').child(_auth.currentUser!.uid);
    UploadTask uploadTask = ref.putData(image!);
    TaskSnapshot snap = await uploadTask;
    String _downloadUrl = await (await snap).ref.getDownloadURL();

    return _downloadUrl;

  }

  // FUNCTION TO PICK FILE FROM FROM GALLERY OR TAKE A PICTURE WITH CAMERA
   pickImage(ImageSource source) async {
    ImagePicker _imagePicker = ImagePicker();

    XFile? _file = await _imagePicker.pickImage(source: source);

    if(_file != null) {
      print('Image selected');
      return _file!.readAsBytes();
    }
    else {
      print("Image not selected");
    }
  }
  Future<String> signUpUsers(String fullName, String email,
      String password, Uint8List? image)
  async {
    String res = 'some error occured';

    try {
      if(fullName.isNotEmpty && email.isNotEmpty &&
          password.isNotEmpty && image != null) {
        UserCredential cred = await _auth.createUserWithEmailAndPassword(
            email: email, password: password);

       String downloadUrl = await _uploadImageToStorage(image);

        await _firestore.collection('users').doc(cred.user!.uid).set({
          'fullName' : fullName,
          'email' : email,
          'image' : downloadUrl,
        });
            res = 'success';
            print("account created");
      }
      else {
        res = 'Please fields must not be empty';
        print(res);
      }
    }
    catch (e) {
      res = e.toString();
    }
    return res;
  }

  // Function to login users

  Future<String> loginUsers(String email, String password) async {
    String res = 'you wanna login';
    try {
      if (email.isNotEmpty && password.isNotEmpty) {
        await _auth.signInWithEmailAndPassword(
            email: email, password: password);
        res = 'success';
        print("login successful");
      }
      else {
        res = 'login failed, fields must not be empty';
        print(res);
      }
    }
      catch (e) {
        res = e.toString();
        print(e.toString());
      }

      return res;
    }
  }
