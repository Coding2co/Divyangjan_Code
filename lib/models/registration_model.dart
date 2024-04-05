// // ignore_for_file: unnecessary_new

// class Registration {
//   String? phoneNumber;
//   String? password;
//   bool? isPhoneVerified;

//   Registration({this.phoneNumber, this.password, this.isPhoneVerified});

//   Registration.fromJson(Map<String, dynamic> json) {
//     phoneNumber = json['phone_number'];
//     password = json['password'];
//     isPhoneVerified = json['isPhone_verified'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['phone_number'] = this.phoneNumber;
//     data['password'] = this.password;
//     data['isPhone_verified'] = this.isPhoneVerified;
//     return data;
//   }
// }