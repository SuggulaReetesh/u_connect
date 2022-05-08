class RegistrationModel{
  late String email;
  late String mobileNumber;
   late String password;
 // RegistrationModel(this.mobileNumber, this.password,this.email);

  createJson(RegistrationModel data){
    return {
      'email': data.email,
      'mobilenumber':data.mobileNumber,
      'password':data.password
    };

  }
}