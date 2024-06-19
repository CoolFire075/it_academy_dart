import 'dorm_room.dart';

void main() {
  List<DormRoom> dormRoomList = [];
  DormRoom dormRoom = DormRoom(10, 12, 15, true);
  dormRoom.getPeople(dormRoom);
  DormRoom dormRoom2 = DormRoom(18, 17, 15, false);
  dormRoom.getPeople(dormRoom2);
  DormRoom dormRoom3 = DormRoom(1, 17, 15, false);
  dormRoom.getPeople(dormRoom3);
  DormRoom dormRoom4 = DormRoom(1, 17, 100, false);
  dormRoom.getPeople(dormRoom4);

}
