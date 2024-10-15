import 'package:flutter/material.dart';

class PageHomeData extends StatelessWidget {
  const PageHomeData({super.key});

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
          child: ClipOval(
            child: Image.network(
              'https://docs.flutter.dev/cookbook'
              '/img-files/effects/split-check/Avatar${(i % 3) + 1}.jpg',
              fit: BoxFit.cover,
            ),
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
            decoration: const BoxDecoration(
              color: Colors.grey,
            ),
            child: Image.network(
              'https://docs.flutter.dev/cookbook'
              '/img-files/effects/split-check/Food${(i % 3) + 1}.jpg',
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(
          height: 4,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 16.0,
          ),
          child: Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do '
            'eiusmod tempor incididunt ut labore et dolore magna aliqua.',
          ),
        ),
      ],
    );
  }
}
