import 'dart:convert';

class AppUser {
  final String uid;
  final String name;
  final String email;
  final String address;
  final int age;
  final String password;
  AppUser({
    required this.uid,
    required this.name,
    required this.email,
    required this.address,
    required this.age,
    required this.password,
  });

  AppUser copyWith({
    String? uid,
    String? name,
    String? email,
    String? address,
    int? age,
    String? password,
  }) {
    return AppUser(
      uid: uid ?? this.uid,
      name: name ?? this.name,
      email: email ?? this.email,
      address: address ?? this.address,
      age: age ?? this.age,
      password: password ?? this.password,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'uid': uid,
      'name': name,
      'email': email,
      'address': address,
      'age': age,
      'password': password,
    };
  }

  factory AppUser.fromMap(Map<String, dynamic> map) {
    return AppUser(
      uid: map['uid'] as String,
      name: map['name'] as String,
      email: map['email'] as String,
      address: map['address'] as String,
      age: map['age'] as int,
      password: map['password'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory AppUser.fromJson(String source) =>
      AppUser.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'AppUser(uid: $uid, name: $name, email: $email, address: $address, age: $age, password: $password)';
  }

  @override
  bool operator ==(covariant AppUser other) {
    if (identical(this, other)) return true;

    return other.uid == uid &&
        other.name == name &&
        other.email == email &&
        other.address == address &&
        other.age == age &&
        other.password == password;
  }

  @override
  int get hashCode {
    return uid.hashCode ^
        name.hashCode ^
        email.hashCode ^
        address.hashCode ^
        age.hashCode ^
        password.hashCode;
  }
}
