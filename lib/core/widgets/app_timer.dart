import 'dart:async';
import 'package:flutter/material.dart';

class AppTimer extends StatefulWidget {
  const AppTimer({
    super.key,
    this.duration,
    this.closeDialog = true,
  });

  final Duration? duration;
  final bool closeDialog;

  @override
  State<AppTimer> createState() => _AppTimerState();
}

class _AppTimerState extends State<AppTimer> {
  Duration? _duration;
  late Timer timer;
  String? minutes;
  String? seconds;

  @override
  void initState() {
    super.initState();
    _duration = widget.duration;
    minutes = strDigits(_duration!.inMinutes.remainder(60));
    seconds = strDigits(_duration!.inSeconds.remainder(60));
    startTimer();
  }

  void startTimer() {
    timer = Timer.periodic(
      const Duration(seconds: 1),
      (final _) => setCountDown(),
    );
  }

  void setCountDown() {
    const int reduceSecondsBy = 1;
    setState(() {
      final int seconds = _duration!.inSeconds - reduceSecondsBy;
      if (seconds < 0) {
        timer.cancel();
        if (widget.closeDialog) {
          Navigator.pop(context);
        }
      } else {
        _duration = Duration(seconds: seconds);
        minutes = strDigits(_duration!.inMinutes.remainder(60));
        this.seconds = strDigits(_duration!.inSeconds.remainder(60));
      }
    });
  }

  String strDigits(final int n) => n.toString().padLeft(2, '0');

  @override
  Widget build(final BuildContext context) {
    return Text(
      '$minutes:$seconds',
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.black,
        fontSize: 28,
      ),
    );
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }
}
