class User {
  String name;
  String lastName;
  String email;
  String confirmEmail;
  String phoneNumber;
  String password;

  Map<String, dynamic> toMap() {
    return {
      'name': this.name,
      'lastName': this.lastName,
      'email': this.email,
      'confirmEmail:': this.confirmEmail,
      'phone': this.phoneNumber
    };
  }
}
