void main() {
  var map = {
    "id": 25,
    "box": {"width": 15, "height": 25, "length": 5}
  };
  var {'box': a} = map;
  var {'width': width, 'height': height, 'length': length} = a as Map;
  print('Width : $width; \nHeight : $height; \nLength : $length ;'
      ' \nVolume : ${width * height * length}');
}
