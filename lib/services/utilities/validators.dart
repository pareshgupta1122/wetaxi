class Validators{

  Function emptyStringValidator = (String value) {
    if (value.isEmpty) {
      return 'Please enter value!';
    }
    return null;
  };



}