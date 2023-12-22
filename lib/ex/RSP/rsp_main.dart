import 'package:flutter/material.dart';
import 'package:sro_toy_project/ex/RSP/Game/rsp_game_body.dart';

class RSPMain extends StatelessWidget {
  const RSPMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('가위 바위 보'),
      ),
      body: const RSPGameBody(),
    );
  }
}
