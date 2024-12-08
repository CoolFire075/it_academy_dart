// Создаем некий аналог авторизации.
// Просим пользователя ввести имя, ввести фамилию, возраст, пол, страна.
// Создаем класс User, заполняем его теми полями, которые пользователь ввел с клавиатуры.
// Пол и страна должны быть енамами.
// Валидация которая будет присутствовать при добавлении полей:
// Имя, фамилия -> только буквы английского/русского алфавитов,
// иначе выбрасываем исключение и просим вновь ввести данные.
// Возраст -> только числовые значения от 0 до 130,
// выбрасываем своё исключение, которое затем обрабатываем,
// и снова просим пользователя ввести корректный возраст.
// Пол -> пол можно указать только из предложенных вариантов
// иначе выбрасываем исключение из метода, которое затем обрабатываем и
// просим пользователя снова ввести свой пол.
// Страна -> страну можно указать только из предложенных вариантов
// иначе выбрасываем исключение из метода, которое затем обрабатываем и
// просим пользователя снова ввести доступную страну.
import 'age_validator.dart';
import 'country_validator.dart';
import 'gender_validator.dart';
import 'name_validator.dart';
import 'ser_name_validator.dart';

void main() {

  NameValidator nameValidator = NameValidator();
  bool isNameCorrect = nameValidator.validate();
  print('Is your name correct: $isNameCorrect');

  SerNameValidator serNameValidator = SerNameValidator();
  bool isSerNameCorrect = serNameValidator.validate();
  print('Is your ser name correct: $isSerNameCorrect');

  AgeValidator ageValidator = AgeValidator();
  bool isAgeCorrect = ageValidator.validate();
  print('Is your age correct: $isAgeCorrect');

  GenderValidator genderValidator = GenderValidator();
  bool isGenderCorrect = genderValidator.validate();
  print('Is your gender correct: $isGenderCorrect');

  CountryValidator countryValidator = CountryValidator();
  bool isCountryCorrect = countryValidator.validate();
  print('Is your country correct: $isCountryCorrect\n');

  print('''  Your name: ${nameValidator.name}
  Your ser name: ${serNameValidator.serName}
  Your age: ${ageValidator.age}
  Your gender: ${genderValidator.gender}
  Your country: ${countryValidator.country}
  ''');
}
