void main() {
  var map = {
    "nickname": "Alex",
    "age": 35,
    "course": 2,
    "ids": [
      1,
      2,
      5
    ]
  };
  var{'ids': ids, 'course': course, 'nickname': nicname} = map;
  print('ids: $ids, course: $course, nickname: $nicname');
}