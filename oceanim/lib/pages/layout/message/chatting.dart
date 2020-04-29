import 'package:flutter/material.dart';
import 'package:oceanim/router/page_builder.dart';

class ChattingPage extends StatefulWidget {
  final Bundle bundle;
  ChattingPage(this.bundle);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ChattingPageState();
  }
}

class _ChattingPageState extends State<ChattingPage>
    with TickerProviderStateMixin {
  List<ReceiveMessage> _receiveMessages = <ReceiveMessage>[];
  List<SendMessage> _sendMessages = <SendMessage>[];
  final TextEditingController _textEditingController =
      new TextEditingController();

  // 定义发送文本事件的处理函数
  void _handleSubmit(String text) {
    _textEditingController.clear();
    SendMessage message = new SendMessage(
      text: text,
      sendAnimationController: AnimationController(
          duration: Duration(milliseconds: 700), vsync: this),
    );

    setState(() {
      _sendMessages.insert(0, message);
    });
    message.sendAnimationController.forward();
  }

  // 文本输入控件
  dynamic _textInput() {
    return Container(
      child: Row(
        children: <Widget>[
          Flexible(
            child: 
            Container(
              padding: EdgeInsets.only(left:10),
              child: TextField(
              controller: _textEditingController,
              onSubmitted: _handleSubmit,
              decoration: InputDecoration.collapsed(hintText: "发送消息"),
            ),)
            ,
          ),
          Container(
            child: IconButton(
              icon: Icon(Icons.send),
              onPressed: () {
                _handleSubmit(_textEditingController.text);
              },
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    for (SendMessage sendMessage in _sendMessages) {
      sendMessage.sendAnimationController.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.bundle.getString("username")),
        ),
        body: Column(
          children: <Widget>[
            Flexible(
              child: new ListView.builder(
                  itemCount: _sendMessages.length,
                  reverse: true, // 倒序
                  itemBuilder: (context, index) => _sendMessages[index]),
            ),
            Divider(
              height: 1,
            ),
            Container(
              decoration: BoxDecoration(color: Theme.of(context).cardColor),
              child: _textInput(),
            )
          ],
        ));
  }
}

// 单条接收消息控件
class ReceiveMessage extends StatelessWidget {
  ReceiveMessage({this.text, this.recevieAnimationController});
  final String text;
  final AnimationController recevieAnimationController;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: new Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            width: 50,
            height: 50,
            margin: EdgeInsets.only(right: 16),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                image: DecorationImage(
                    image: AssetImage("assets/images/3.jpg"),
                    fit: BoxFit.cover)),
          ),
          SizedBox(
            width: 20,
          ),
          Expanded(
              child: Column(
            children: <Widget>[
              Text("OCEAN.GZY"),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: Colors.black,
                ),
                padding: EdgeInsets.fromLTRB(10, 10, 12, 10),
                margin: EdgeInsets.fromLTRB(0, 5, 100, 0),
                child: Text(
                  text,
                  style: TextStyle(
                      color: Colors.white, fontSize: 18, letterSpacing: 2),
                ),
              ),
            ],
          )),
        ],
      ),
    );
  }
}

//单条发送消息控件
class SendMessage extends StatelessWidget {
  SendMessage({this.text, this.sendAnimationController});
  final String text;
  final AnimationController sendAnimationController;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: new Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
            
              children: <Widget>[
                Text(
                  "OCEAN.GZY",
                  style: TextStyle(fontSize: 10, color: Colors.black38),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.black,
                  ),
                  padding: EdgeInsets.fromLTRB(10, 10, 12, 10),
                  margin: EdgeInsets.fromLTRB(100, 5, 0, 0),
                  child: Text(
                    text,
                    style: TextStyle(
                        color: Colors.white, fontSize: 18, letterSpacing: 2),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Container(
            width: 50,
            height: 50,
            margin: EdgeInsets.only(right: 16),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                image: DecorationImage(
                    image: AssetImage("assets/images/3.jpg"),
                    fit: BoxFit.cover)),
          ),
        ],
      ),
    );
  }
}
