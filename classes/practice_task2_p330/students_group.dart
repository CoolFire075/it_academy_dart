import 'dart:io';

import 'student.dart';

class StudentsGroup {
  List<Student> list = [];

  void addStudent(Student student) {
    if (student.gPA >= 2.0 && student.gPA <= 4.0) list.add(student);
  }

  List<Student> findStudent() {
    print('Введите ФИО студента:');
    String name = stdin.readLineSync() ?? '';
    List<Student> studentsList = [];

    for (int i = 0; i < list.length; i++) {
      if (name == list[i].fIO) studentsList.add(list[i]);
    }
    print(studentsList);
    List<Student> newStudentsList = [];
    var size = studentsList.length;
    for (int j = 0; j < size; j++) {
      double lessGPA = studentsList[0].gPA;
      var student = studentsList[0];
      for (int i = 0; i < studentsList.length; i++) {
        if (studentsList[i].gPA <= lessGPA) {
          lessGPA = studentsList[i].gPA;
          student = studentsList[i];
        }
      }
      newStudentsList.add(student);
      studentsList.remove(student);
    }
    return newStudentsList;
  }

  List<Student> findStudentsByGPA() {
    List<Student> studentsList = [];

    print('Введите диапазон баллов:');
    var string = stdin.readLineSync() ?? '';
    double lessNumber = double.tryParse(string) ?? 0;

    var string2 = stdin.readLineSync() ?? '';
    double biggerNumber = double.tryParse(string2) ?? 0;

    for (int i = 0; i < list.length; i++) {
      if (list[i].gPA >= lessNumber && list[i].gPA <= biggerNumber)
        studentsList.add(list[i]);
    }
    bool isListTrue;
    do {
      isListTrue = true;
      for (int i = 0; i < studentsList.length - 1; i++) {
        if (studentsList[i].gPA > studentsList[i + 1].gPA) {
          studentsList.insert(i, studentsList[i + 1]);
          studentsList.removeAt(i + 2);
          isListTrue = false;
        }
      }
    } while (!isListTrue);

    return studentsList;
  }
}
