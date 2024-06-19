void main() {
  var map = {
    "id": 25,
    "box": {
      "width": 15,
      "height": 25,
      "coords": {"x": -7, "y": 11}
    }
  };
  var {'box': a} = map;
  var {'coords': b} = a as Map;
  var {'x': x, 'y': y} = b;
  print('x: $x,y: $y; sum: ${x + y}');
}
