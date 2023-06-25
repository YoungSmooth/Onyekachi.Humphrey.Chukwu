import 'package:flutter/material.dart';

class MainTransparentTop extends StatelessWidget {
  const MainTransparentTop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(width: 1, color: Colors.grey.shade700),
          borderRadius: BorderRadius.circular(30)),
      child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: TransparentBackgroundTop()),
    );
  }
}

class MainTransparent extends StatelessWidget {
  const MainTransparent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(width: 1, color: Colors.grey.shade700),
          borderRadius: BorderRadius.circular(60)),
      child: ClipRRect(
          borderRadius: BorderRadius.circular(60),
          child: TransparentBackgroundMain()),
    );
  }
}

class TransparentBackgroundMain extends StatefulWidget {
  const TransparentBackgroundMain({super.key});

  @override
  State<TransparentBackgroundMain> createState() =>
      _TransparentBackgroundMainState();
}

class _TransparentBackgroundMainState extends State<TransparentBackgroundMain> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.black.withOpacity(0.8)),
    );
  }
}

class TransparentBackgroundTop extends StatefulWidget {
  const TransparentBackgroundTop({super.key});

  @override
  State<TransparentBackgroundTop> createState() =>
      _TransparentBackgroundTopState();
}

class _TransparentBackgroundTopState extends State<TransparentBackgroundTop> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.black.withOpacity(0.8)),
    );
  }
}
