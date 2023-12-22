import 'package:flutter/material.dart';
import 'package:sro_toy_project/ex/RSP/Game/rsp_game_enum.dart';

class RSPGameResult extends StatelessWidget {
  final bool isDone;
  final RSPGameResultType? result;
  final VoidCallback callback;

  const RSPGameResult({
    required this.isDone,
    this.result,
    required this.callback,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    if (isDone) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            result?.displayString ?? '',
            style: const TextStyle(
              fontSize: 32,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          TextButton(
              onPressed: () => callback.call(),
              child: const Text(
                '다시 하기',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.black,
                ),
              ))
        ],
      );
    } else {
      return const Center(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            "가위, 바위, 보 중 하나를 선택 해 주세요.",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      );
    }
  }
}
