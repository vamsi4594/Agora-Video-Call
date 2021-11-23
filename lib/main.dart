import 'package:flutter/material.dart';
import 'package:flutter_agora/start_page.dart';

// const app_id = '704d0a544f774f4db3defc5ae30fb767';
// const token = '006704d0a544f774f4db3defc5ae30fb767IAC8fujAdwer96tvAjQMZH+PGvhF/Gf44A6C6MjJyiFbWwZa8+gAAAAAEACOCs8Z196ZYQEAAQDX3plh';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: StartPage(),
    );
  }
}

// class MyStartApp extends StatefulWidget {
//   @override
//   MyStartAppState createState() => MyStartAppState();
// }
//
// class MyStartAppState extends State<MyStartApp> {
//
//   late int _remoteUid;
//   late RtcEngine _engine;
//   bool _localUserJoined = false;
//
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     initForAgora();
//   }
//
//   Future<void> initForAgora() async {
//     // retrieve permissions
//     await [Permission.microphone, Permission.camera].request();
//     _engine = await RtcEngine.createWithConfig(RtcEngineConfig(app_id));
//     await _engine.enableVideo();
//     _engine.setEventHandler(
//       RtcEngineEventHandler(
//         joinChannelSuccess: (String channel, int uid, int elapsed){
//           print('local user $uid joined.');
//           setState(() {
//             _localUserJoined = true;
//           });
//     },
//         userJoined: (int uid, int elapsed){
//           print('remote user $uid joined.');
//           setState(() {
//             _remoteUid = uid;
//           });
//     },
//         userOffline: (int uid, UserOfflineReason reason){
//           print('remote user $uid left channel');
//           setState(() {
//             _remoteUid = null;
//           });
//     }
//       )
//     );
//     await _engine.joinChannel(token, "testing", null, 0);
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Agora VideoCall'),
//       ),
//       body: Stack(
//         children: [
//           Center(
//             child: _renderRemoteVideo(),
//           ),
//           Align(
//             alignment: Alignment.topLeft,
//             child: Container(
//               width: 100,
//               height: 100,
//               child: Center(
//                 child: _renderLocalPreview(),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//   // current user video
//   Widget _renderLocalPreview() {
//     if (_localUserJoined) {
//       return RtcLocalView.SurfaceView();
//     } else {
//       return Text(
//         'Please join channel first',
//         textAlign: TextAlign.center,
//       );
//     }
//   }
// // remote user video
//   Widget _renderRemoteVideo() {
//     if (_remoteUid != null) {
//       return RtcRemoteView.SurfaceView(uid: _remoteUid);
//     } else {
//       return Text(
//         'Please wait remote user to join',
//         textAlign: TextAlign.center,
//       );
//     }
//   }
// }



