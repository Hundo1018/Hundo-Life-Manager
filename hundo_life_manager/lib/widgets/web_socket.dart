import 'package:flutter/material.dart';
import 'package:web_socket_channel/web_socket_channel.dart';
///TODO:保存與讀取時才動作，離開自動斷線
class WebSocket {
  final channel =
      WebSocketChannel.connect('wss://echo.websocket.events' as Uri);
  WebSocket() {
    StreamBuilder(
      stream: channel.stream,
      builder: (context, snapshot) {
        return Text(snapshot.hasData ? '${snapshot.data}' : '');
      },
    );
    channel.sink.add("");
    channel.sink.close();
  }
}
