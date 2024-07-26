String? Function(String?)? validate({
  String? text,
  String? title,
}) {
  return (value) {
    if (value!.isEmpty) {
      if (text != null) {
        return 'please enter your $text';
      } else if (title != null) {
        return title;
      }
    }
    return null;
  };
}
