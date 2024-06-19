void main() {
  var list = [
    {
      "name": "tt",
      "type": "file",
      "paths": [
        "tt.json",
        "tt.js",
        "c:/documents/tt.json",
      ]
    },
    {
      "name": "Object",
      "type": "executable",
      "paths": ["c:/documents/Object.exe", "c:/documents/Object"]
    },
    {
      "name": "Alex",
      "age": 35,
      "course": 2,
      "single": true,
      "description": [
        "Мечтатель",
        "Ленив",
        "Студент",
        "Постоянно жалуется на жизнь"
      ]
    }
  ];
  for (var element in list) {
    switch (element) {
      case {'name': 'tt'} || {'course': 2}:
        print('Full Match');
      case {'paths': [_, _, ...]}:
        print('There are list with 2 or more values');
      case {'paths': List list1} when list1.length >= 2:
        print('There are list with 2 or more values');
      case _:
        print('No match');
    }
  }
}
