import 'dart:io';

void main() {
  print('Input number of season: ');
  String string = stdin.readLineSync() ?? '';
  var month = int.tryParse(string) ?? 0;
  getSeasonWithLambdas(month);
  getSeasonWithIfCondition(month);
}

void getSeasonWithLambdas(var month) {
  var season = switch (month) {
    12 || 1 || 2 => 'Winter',
    3 || 4 || 5 => 'Spring',
    6 || 7 || 8 => 'Summer',
    9 || 10 || 11 => 'Autumn',
    _ => 'Error'
  };
  print(season);
}

void getSeasonWithIfCondition(var month) {
  var season;
  if (month <= 0 || month >= 13)
    season = 'Error';
  else if (month == 12 || month <= 2)
    season = 'Winter';
  else if (month <= 5)
    season = 'Spring';
  else if (month <= 8)
    season = 'Summer';
  else
    season = 'Autumn';
  print(season);
}
