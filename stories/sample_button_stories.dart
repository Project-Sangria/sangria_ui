import 'package:flutter/material.dart';
import 'sample_button.dart';
import 'package:sangria_ui/sangria_ui.dart';
import 'package:sangria_ui/avatar.dart';
import 'package:sangria_ui/test.dart';

Widget primary() => const Button('Button', ButtonStyles.primary);

Widget secondary() => const Button('Button', ButtonStyles.secondary);

Widget disabled() => const Button('Button', ButtonStyles.disabled);

Widget defaultCard() => SangriaCard(
      borderColor: Colors.red,
      avatarUrl: 'https://example.com/avatar.jpg',
      giftCount: 5,
      coinCount: 10,
      onlineUserAvatars: [
        'https://example.com/user1.jpg',
        'https://example.com/user2.jpg',
      ],
      time: '5:30 PM',
      distance: '2 km',
    );

Widget avatar() => Avatar();

Widget test() =>  Test();
