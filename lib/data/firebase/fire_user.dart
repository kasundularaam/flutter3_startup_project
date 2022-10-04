import 'package:cloud_firestore/cloud_firestore.dart';

import '../models/app_user.dart';

class FireUser {
  static CollectionReference userRef =
      FirebaseFirestore.instance.collection("user");

  static Future<void> addUser({required AppUser appUser}) async {
    try {
      await userRef.doc(appUser.uid).set(appUser.toMap());
    } catch (e) {
      throw e.toString();
    }
  }

  static Future<bool> userExist({required String uid}) async {
    try {
      DocumentSnapshot snapshot = await userRef.doc(uid).get();
      return snapshot.exists;
    } catch (e) {
      throw e.toString();
    }
  }

  static Future<AppUser> getUserByNic({required String uid}) async {
    try {
      AppUser appUser = await userRef.doc(uid).get().then((doc) {
        Map<String, dynamic> map = doc.data() as Map<String, dynamic>;
        return AppUser.fromMap(map);
      });
      return appUser;
    } catch (e) {
      throw e.toString();
    }
  }

  static Future<AppUser> getUserByUid({required String uid}) async {
    try {
      QuerySnapshot snapshot = await userRef.where("uid", isEqualTo: uid).get();
      Map<String, dynamic> map =
          snapshot.docs.first.data() as Map<String, dynamic>;
      return AppUser.fromMap(map);
    } catch (e) {
      throw e.toString();
    }
  }

  static Future setDonationAbility(
      {required String nic, required String donationAbility}) async {
    try {
      await userRef.doc(nic).update({"donationAbility": donationAbility});
    } catch (e) {
      throw e.toString();
    }
  }
}
