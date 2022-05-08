class PersonalDetailsModel{
  late String userName;
  late String dateOfBirth;
   late String city;
   late String state;
   
 // RegistrationModel(this.mobileNumber, this.password,this.email);

  createJson(PersonalDetailsModel data){
    return {
      'userName': data.userName,
      'dateOfBirth':data.dateOfBirth,
      'city':data.city,
      'state':data.state
    };

  }
}