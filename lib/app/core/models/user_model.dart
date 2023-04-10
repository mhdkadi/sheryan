class User {
  final String username;
  final String password;

  User({
    required this.username,
    required this.password,
  });
  factory User.fromMap(Map data) => User(
        username: data["username"],
        password: data["password"],
      );
}

///////////////////////////////////////////////////////////
class Register {
  final String id;
  final String address;
  final String phone;
  final String username;
  final String password;

  Register({
    required this.id,
    required this.address,
    required this.phone,
    required this.username,
    required this.password,
  });
  factory Register.fromMap(Map data) => Register(
        id: data["id"],
        address: data["address"],
        phone: data["phone"],
        username: data["username"],
        password: data["password"],
      );
}
