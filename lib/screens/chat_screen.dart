import 'package:flutter/material.dart';
import 'package:flutterapp/models/message_model.dart';
import 'package:flutterapp/models/user_model.dart';

class ChatScreen extends StatefulWidget {
  final User user;
  ChatScreen({this.user});

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {

  _buildMessageComposer() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      height: 70.0,
      color: Colors.white,
      child: Row(
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.photo),
            iconSize: 25.0,
            color: Colors.blue,
            onPressed: () {},
          ),
          Expanded(child: TextField(
            decoration: InputDecoration.collapsed(
              hintText: "Type a message to send..."
            ),
          ),

          ),
          IconButton(
            icon: Icon(Icons.send),
            iconSize: 25.0,
            color: Colors.blue,
            onPressed: () {},
          )
        ],
      ),
    );
  }

  _buildMessage(Message message, bool isMe){
    final Container msg = Container(
        margin: isMe? EdgeInsets.only(
            top: 8.0,
            bottom: 8.0,
            left: 80.0
        ) : EdgeInsets.only(
          top: 8.0,
          bottom: 8.0,
        ),
        padding: EdgeInsets.symmetric(
            horizontal: 25.0,
            vertical: 15.0
        ),
        width: MediaQuery.of(context).size.width *0.75,
        decoration: BoxDecoration(
          color: isMe? Theme.of(context).accentColor : Color(0xffbae1ff),
          borderRadius: isMe? BorderRadius.only(
              topLeft: Radius.circular(15.0),
              bottomLeft: Radius.circular(15.0)
          ) : BorderRadius.only(
              topRight: Radius.circular(15.0),
              bottomRight: Radius.circular(15.0)
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
                message.time,
                style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 13.0
                )
            ),
            SizedBox(
                height: 8.0
            ),
            Text(
              message.text,
              style: TextStyle(
                  color: Colors.blueGrey,
                  fontSize: 16.0
              ),
            ),
          ],
        )
    );

    if(isMe){
        return msg;
    }

    return Row(
      children: <Widget>[
        msg,
        IconButton(
          icon: message.isLiked ? Icon(
              Icons.favorite
          ) : Icon(
              Icons.favorite_border
          ),
          iconSize: 30.0,
          color: message.isLiked? Colors.red : Colors.blueGrey,
          onPressed: (){},
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        elevation: 0.0,
        title: Text(
          widget.user.name,
          style: TextStyle(
            fontSize: 28.0,
            fontWeight: FontWeight.bold
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.more_horiz
            ),
            iconSize: 30.0,
            color: Colors.white,
            onPressed: () {},
          )
        ],
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30.0),
                    topLeft: Radius.circular(30.0),
                  )
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0)
                  ),
                  child: ListView.builder(
                    reverse: true,
                    padding: EdgeInsets.only(top: 15.0),
                      itemCount: messages.length,
                      itemBuilder: (BuildContext context, int index){
                      final Message message = messages[index];
                      bool isMe = message.sender.id == currentUser.id;
                        return _buildMessage(message, isMe);
                      }),
                ),
              ),
            ),
            _buildMessageComposer(),
          ],
        ),
      ),
    );
  }
}
