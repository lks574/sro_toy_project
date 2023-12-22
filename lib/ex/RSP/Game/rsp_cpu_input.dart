import 'package:flutter/material.dart';
import 'package:sro_toy_project/ex/RSP/Game/rsp_game_enum.dart';
import 'package:sro_toy_project/ex/RSP/Game/widget/rsp_input_card.dart';

class RSPCpuInput extends StatelessWidget {
  final bool isDone;
  final RSPInputType cpuInput;

  const RSPCpuInput({
    required this.isDone,
    required this.cpuInput,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: SizedBox.shrink(),
        ),
        RSPInputCard(
          child: _getCpuInput(),
        ),
        const Expanded(
          child: SizedBox.shrink(),
        ),
      ],
    );
  }

  Widget _getCpuInput() {
    return SizedBox(
      height: 80,
      child: Center(
        child: isDone
            ? Image.asset(
                cpuInput.path,
                height: 80,
                width: 80,
              )
            : const Text(
                '?',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
      ),
    );
  }
}
