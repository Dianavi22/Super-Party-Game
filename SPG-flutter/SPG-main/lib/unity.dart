import 'package:flutter/material.dart';
import 'package:flutter_unity_widget/flutter_unity_widget.dart';
import 'package:spg/view/home.dart';

const closeUnity = "closeUnity";

class UnityLauncher extends StatefulWidget {
  const UnityLauncher({super.key, required this.gameId});

  final int gameId;

  @override
  State<UnityLauncher> createState() => _UnityLauncher();
}

class _UnityLauncher extends State<UnityLauncher> {
  late UnityWidgetController _unityWidgetController;
  bool notQuiting = true;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _unityWidgetController.dispose();
    super.dispose();
  }

  Future<void> loadScene(String sceneID) async {
    await _unityWidgetController.postMessage(
      'GameManager',
      'LoadScene',
      sceneID,
    );
  }

  Future<void> returnMaster() async {
    await _unityWidgetController.postMessage('GameManager', 'ReturnMasterScene', "");
  }

  void resetGame() {
    _unityWidgetController.postMessage('GameManager', 'ResetScene', "");
  }

  void onCreated(UnityWidgetController controller) {
    controller.resume();
    _unityWidgetController = controller;
  }

  void onUnityMessage(message) async {
    if (message == closeUnity) {
      print('Received message from unity: ${message.toString()}');
      notQuiting = false;
      await returnMaster();
      await _unityWidgetController.pause();
      Navigator.pushReplacement(context, PageRouteBuilder(pageBuilder: (_, __, ___) => Home()));
    }
  }

  Future<void> onUnitySceneLoaded(sceneInfo) async {
    print('Received scene loaded from unity: ${sceneInfo.name}');
    print('Received scene loaded from unity buildIndex: ${sceneInfo.buildIndex}');
    if (sceneInfo.buildIndex == 0 && notQuiting) {
      print("loading ${widget.gameId}");
      await loadScene("${widget.gameId}");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          UnityWidget(
            onUnityCreated: onCreated,
            onUnityMessage: onUnityMessage,
            onUnitySceneLoaded: onUnitySceneLoaded,
            useAndroidViewSurface: true,
          ),
        ],
      ),
    );
  }
}
