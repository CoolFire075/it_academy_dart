class Color {
  final int _red;
  final int _green;
  final int _blue;

  Color(this._red, this._green, this._blue);

  int get blue => _blue;

  int get green => _green;

  int get red => _red;

  Color operator +(Color other) {
    int red = _red + other._red;
   if(red > 255) red = 255;
    int green = _green + other._green;
    if(green > 255) green = 255;
    int blue = _blue + other._blue;
    if(blue > 255) blue = 255;
    return Color(red, green, blue);
  }
  Color operator *(double other){
    int red = (_red.toDouble() * other).toInt();
    int green = (_green.toDouble() * other).toInt();
    int blue = (_blue.toDouble() * other).toInt();
    return Color(red, green, blue);
  }

  @override
  String toString() {
    return 'Color{_red: $_red, _green: $_green, _blue: $_blue}';
  }
}
