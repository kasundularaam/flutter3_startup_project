import 'dart:convert';

class RegisterReq {
  final String name;
  final String email;
  final String address;
  final int age;
  final String password;
  RegisterReq({
    required this.name,
    required this.email,
    required this.address,
    required this.age,
    required this.password,
  });

  RegisterReq copyWith({
    String? name,
    String? email,
    String? address,
    int? age,
    String? password,
  }) {
    return RegisterReq(
      name: name ?? this.name,
      email: email ?? this.email,
      address: address ?? this.address,
      age: age ?? this.age,
      password: password ?? this.password,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'email': email,
      'address': address,
      'age': age,
      'password': password,
    };
  }

  factory RegisterReq.fromMap(Map<String, dynamic> map) {
    return RegisterReq(
      name: map['name'] as String,
      email: map['email'] as String,
      address: map['address'] as String,
      age: map['age'] as int,
      password: map['password'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory RegisterReq.fromJson(String source) =>
      RegisterReq.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'RegisterReq(name: $name, email: $email, address: $address, age: $age, password: $password)';
  }

  @override
  bool operator ==(covariant RegisterReq other) {
    if (identical(this, other)) return true;

    return other.name == name &&
        other.email == email &&
        other.address == address &&
        other.age == age &&
        other.password == password;
  }

  @override
  int get hashCode {
    return name.hashCode ^
        email.hashCode ^
        address.hashCode ^
        age.hashCode ^
        password.hashCode;
  }
}
