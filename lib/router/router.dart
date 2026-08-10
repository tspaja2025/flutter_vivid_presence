import 'package:flutter_vivid_presence/screens/active_chat.dart';
import 'package:flutter_vivid_presence/screens/chats.dart';
import 'package:flutter_vivid_presence/screens/contacts.dart';
import 'package:flutter_vivid_presence/screens/groups.dart';
import 'package:flutter_vivid_presence/screens/new_group.dart';
import 'package:flutter_vivid_presence/screens/profile.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  routes: [
    GoRoute(path: '/', builder: (context, state) => const Chats()),
    GoRoute(path: '/contacts', builder: (context, state) => const Contacts()),
    GoRoute(path: '/groups', builder: (context, state) => const Groups()),
    GoRoute(path: '/profile', builder: (context, state) => const Profile()),
    GoRoute(
      path: '/activeChat',
      builder: (context, state) => const ActiveChat(),
    ),
    GoRoute(path: '/newGroup', builder: (context, state) => const NewGroup()),
  ],
);
