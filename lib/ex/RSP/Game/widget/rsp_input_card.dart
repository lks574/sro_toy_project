import 'package:flutter/material.dart';

class RSPInputCard extends StatelessWidget {
  final VoidCallback? callback;
  final Widget child;

  const RSPInputCard({
    this.callback,
    required this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () => callback?.call(),
        child: RSPInputContents(
          child: child,
        ),
      ),
    );
  }
}

class RSPInputContents extends StatelessWidget {
  final Widget child;
  const RSPInputContents({
    required this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 8,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 8,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: Colors.grey, width: 8),
      ),
      child: child,
    );
  }
}
