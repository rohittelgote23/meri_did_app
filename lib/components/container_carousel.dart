import 'dart:async';
import 'package:flutter/material.dart';

class ContainerCarousel extends StatefulWidget {
  final List<Widget> containers;
  final double height;
  final Duration autoPlayInterval;

  const ContainerCarousel({
    super.key,
    required this.containers,
    this.height = 190,
    this.autoPlayInterval = const Duration(seconds: 3),
  });

  @override
  State<ContainerCarousel> createState() => _ContainerCarouselState();
}

class _ContainerCarouselState extends State<ContainerCarousel> {
  late final PageController _controller;
  late Timer _timer;
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _controller = PageController(viewportFraction: 0.9);

    // Auto-play logic
    _timer = Timer.periodic(widget.autoPlayInterval, (Timer timer) {
      if (_controller.hasClients) {
        _currentPage++;
        if (_currentPage >= widget.containers.length) {
          _currentPage = 0;
        }
        _controller.animateToPage(
          _currentPage,
          duration: const Duration(milliseconds: 400),
          curve: Curves.easeInOut,
        );
      }
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height,
      child: PageView.builder(
        controller: _controller,
        itemCount: widget.containers.length,
        itemBuilder: (context, index) {
          return widget.containers[index];
        },
      ),
    );
  }
}
