void main(){
  var map = [
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
      "paths": [
        "c:/documents/Object.exe",
        "c:/documents/Object"
      ]
    }
  ];
  var[{'type': type, 'paths': paths},{'type': type2, 'paths': paths2}] = map;
  print('list1: type: $type; paths: $paths; \nlist2: type: $type2; paths: $paths2');
}