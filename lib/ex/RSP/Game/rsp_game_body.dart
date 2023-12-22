import 'dart:math';

import 'package:flutter/material.dart';
import 'package:sro_toy_project/ex/RSP/Game/rsp_cpu_input.dart';
import 'package:sro_toy_project/ex/RSP/Game/rsp_game_enum.dart';
import 'package:sro_toy_project/ex/RSP/Game/rsp_game_result.dart';
import 'package:sro_toy_project/ex/RSP/Game/rsp_user_input.dart';

class RSPGameBody extends StatefulWidget {
  const RSPGameBody({super.key});

  @override
  State<RSPGameBody> createState() => _RSPGameBodyState();
}

class _RSPGameBodyState extends State<RSPGameBody> {
  late bool isDone;
  late RSPInputType? _userInput;
  late RSPInputType _cpuInput;

  @override
  void initState() {
    super.initState();
    isDone = false;
    _userInput = null;
    setCpuInput();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: RSPCpuInput(
            isDone: isDone,
            cpuInput: _cpuInput,
          ),
        ),
        Expanded(
          child: RSPGameResult(
            isDone: isDone,
            callback: reset,
            result: _getResult(),
          ),
        ),
        Expanded(
          child: RSPuserInput(
            isDone: isDone,
            userInput: _userInput,
            callback: setUserInput,
          ),
        ),
      ],
    );
  }

  void reset() {
    setState(() {
      isDone = false;
      setCpuInput();
    });
  }

  void setUserInput(RSPInputType userInput) {
    setState(() {
      isDone = true;
      _userInput = userInput;
    });
  }

  void setCpuInput() {
    _cpuInput = RSPInputType.values[Random().nextInt(3)];
  }

  RSPGameResultType? _getResult() {
    if (_userInput == null) return null;

    switch (_userInput!) {
      case RSPInputType.rock:
        switch (_cpuInput) {
          case RSPInputType.rock:
            return RSPGameResultType.draw;
          case RSPInputType.scissors:
            return RSPGameResultType.playerWin;
          case RSPInputType.paper:
            return RSPGameResultType.cpuWin;
        }
      case RSPInputType.scissors:
        switch (_cpuInput) {
          case RSPInputType.rock:
            return RSPGameResultType.cpuWin;
          case RSPInputType.scissors:
            return RSPGameResultType.draw;
          case RSPInputType.paper:
            return RSPGameResultType.playerWin;
        }
      case RSPInputType.paper:
        switch (_cpuInput) {
          case RSPInputType.rock:
            return RSPGameResultType.playerWin;
          case RSPInputType.scissors:
            return RSPGameResultType.cpuWin;
          case RSPInputType.paper:
            return RSPGameResultType.draw;
        }
    }
  }
}
