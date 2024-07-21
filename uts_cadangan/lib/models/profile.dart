class Profile {
  final int id;
  final String photo;
  final String name;
  final String email;
  final String phone;
  final String birthDate;

  Profile({
    required this.id,
    required this.photo,
    required this.name,
    required this.email,
    required this.phone,
    required this.birthDate,
  });

  factory Profile.fromJson(Map<String, dynamic> json) {
    return Profile(
      id: json['id'],
      photo: json['photo'],
      name: json['name'],
      email: json['email'],
      phone: json['phone'],
      birthDate: json['birth_date'],
    );
  }
}
