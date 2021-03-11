///
/// This class allows us to delete something characters of the number phone.
///

class PhoneValidate {
  ///
  ///@param phone, is a String that content a number phone with characters
  ///not allowed.
  ///
  ///@return newPhone, is a String that content a number phone without
  ///characters not allowed.
  ///
  static String phoneValidation(String phone) {
    String newPhone = phone
        .replaceAll('-', '')
        .replaceAll('(', '')
        .replaceAll(')', '')
        .replaceAll('x', '')
        .replaceAll(' ', '')
        .replaceAll('.', '');
    return newPhone;
  }
}
