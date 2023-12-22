import 'package:flutter/material.dart';
import 'package:sro_toy_project/ex/RSP/Game/rsp_game_enum.dart';
import 'package:sro_toy_project/ex/RSP/Game/widget/rsp_input_card.dart';

class RSPuserInput extends StatelessWidget {
  final bool isDone;
  final RSPInputType? userInput;
  final Function(RSPInputType) callback;

  const RSPuserInput({
    required this.isDone,
    this.userInput,
    required this.callback,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    if (isDone) {
      return Row(
        children: [
          const Expanded(child: SizedBox.shrink()),
          RSPInputCard(child: Image.asset(userInput?.path ?? '')),
          const Expanded(child: SizedBox.shrink())
        ],
      );
    } else {
      return Row(
        children: _getInputs(callback),
      );
    }
  }

  List<Widget> _getInputs(Function(RSPInputType) callback) {
    return RSPInputType.values
        .map(
          (type) => RSPInputCard(
            callback: () => callback.call(type),
            child: Image.asset(type.path),
          ),
        )
        .toList();
  }
}
