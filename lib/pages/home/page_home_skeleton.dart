import 'package:flutter/material.dart';

class PageHomeSkeleton extends StatelessWidget {
  const PageHomeSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.symmetric(vertical: 16),
      itemBuilder: (_, i) => i == 0 ? const _Contacts() : _Post(i: i),
      separatorBuilder: (_, i) => const SizedBox(
        height: 16,
      ),
      itemCount: 6,
    );
  }
}

class _Contacts extends StatelessWidget {
  const _Contacts();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 64,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, i) => Container(
          width: 64,
          height: 64,
          decoration: const BoxDecoration(
            color: Colors.grey,
            shape: BoxShape.circle,
          ),
        ),
        separatorBuilder: (_, __) => const SizedBox(
          width: 8,
        ),
        itemCount: 10,
      ),
    );
  }
}

class _Post extends StatelessWidget {
  final int i;
  const _Post({super.key, required this.i});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        AspectRatio(
          aspectRatio: 16 / 9,
          child: Container(
            width: double.infinity,
            color: Colors.grey,
          ),
        ),
        const SizedBox(
          height: 4,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
          ),
          child: Container(
            width: double.infinity,
            height: 16.0,
            color: Colors.grey,
          ),
        ),
        const SizedBox(
          height: 4,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
          ),
          child: Container(
            width: double.infinity,
            height: 16.0,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
