import 'package:flutterapp/models/user_model.dart';

class Message {
  final User sender;
  final String time;
  final String text;
  final bool isLiked;
  final bool unread;

  Message({this.sender, this.time, this.text, this.isLiked, this.unread});
}

final User currentUser = User(
    id: 0, name: "Nidhi Kamath", imageUrl: "assets/images/nidhikamath.jpg");

final User user1 =
    User(id: 1, name: "User 1", imageUrl: "assets/images/plane.png");

final User user2 =
    User(id: 2, name: "User 2", imageUrl: "assets/images/suitcase.png");

final User user3 =
    User(id: 3, name: "User 3", imageUrl: "assets/images/drink.png");

final User user4 =
    User(id: 4, name: "User 4", imageUrl: "assets/images/travelclaims.png");

final User user5 =
    User(id: 5, name: "User 5", imageUrl: "assets/images/truck.png");

final User user6 =
User(id: 6, name: "User 6", imageUrl: "assets/images/attendancehistory.png");

final User user7 =
User(id: 7, name: "User 7", imageUrl: "assets/images/cart.png");

final User user8 =
User(id: 8, name: "User 8", imageUrl: "assets/images/suitcase.png");

List<User> favorites = [user2, user6, user3, user7, user5];

final List<Message> chats = [
  Message(
    sender: user1,
    time: "2:05 pm",
    text: "Good Afternoon. What have you been upto??",
    isLiked: false,
    unread: false
  ),
  Message(
      sender: user2,
      time: "1:30 am",
      text: "Hi",
      isLiked: false,
      unread: true
  ),
  Message(
      sender: user3,
      time: "3:30 pm",
      text: "Could you send me the notes?",
      isLiked: false,
      unread: false
  ),
  Message(
      sender: user4,
      time: "4:10 pm",
      text: "See you at 8",
      isLiked: false,
      unread: true
  ),
  Message(
      sender: user5,
      time: "2:10 pm",
      text: "Send me the notes of lectures I have missed.",
      isLiked: false,
      unread: true
  ),

  Message(
      sender: user6,
      time: "2:10 pm",
      text: "Send me the notes of lectures I have missed.",
      isLiked: false,
      unread: false
  ),

  Message(
      sender: user7,
      time: "2:10 pm",
      text: "Send me the notes of lectures I have missed.",
      isLiked: false,
      unread: false
  ),

  Message(
      sender: user8,
      time: "2:10 pm",
      text: "Send me the notes of lectures I have missed.",
      isLiked: false,
      unread: true
  )

];

final List<Message> messages = [
  Message(
      sender: currentUser,
      time: "3:02 pm",
      text: "Done :)",
      isLiked: false,
      unread: false
  ),
  Message(
      sender: user1,
      time: "2:48 pm",
      text: "Yes surely. See you at 8:00 pm tomorrow then?",
      isLiked: false,
      unread: false
  ),
  Message(
      sender: currentUser,
      time: "2:44 pm",
      text: "Maybe tomorrow or day after. See if that suits your schedule",
      isLiked: false,
      unread: false
  ),
  Message(
      sender: currentUser,
      time: "2:43 pm",
      text: "Yes all good here as well. We must meet. It's been a long time!!",
      isLiked: false,
      unread: false
  ),
  Message(
      sender: user1,
      time: "2:42 pm",
      text: "All good. Hoping the same for you",
      isLiked: true,
      unread: false
  ),
  Message(
      sender: currentUser,
      time: "2:40 am",
      text: "What else? It's been a long time. How is everyone at home?",
      isLiked: false,
      unread: true
  ),
  Message(
      sender: user1,
      time: "2:36 pm",
      text: "Alright. I'll do that",
      isLiked: true,
      unread: false
  ),
  Message(
      sender: currentUser,
      time: "2:35 pm",
      text: "Only send me the notes of lectures I have missed.",
      isLiked: false,
      unread: true
  ),
  Message(
      sender: user1,
      time: "2:20 pm",
      text: "Sure. Give me sometime. Right now I'm caught up with some work",
      isLiked: false,
      unread: true
  ),

  Message(
      sender: currentUser,
      time: "2:16 pm",
      text: "Could you send me the notes?",
      isLiked: false,
      unread: false
  ),

  Message(
      sender: currentUser,
      time: "2:15 pm",
      text: "Hi. Nothing much. How are you doing?",
      isLiked: false,
      unread: false
  ),

  Message(
      sender: user1,
      time: "2:10 pm",
      text: "Good Afternoon. What have you been upto??",
      isLiked: true,
      unread: true
  )

];
