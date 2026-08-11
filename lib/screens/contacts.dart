import 'package:flutter/material.dart';
import 'package:flutter_vivid_presence/shared/app_scaffold.dart';
import 'package:flutter_vivid_presence/widgets/chat_list_tile.dart';
import 'package:material_symbols_icons/symbols.dart';

class Contacts extends StatelessWidget {
  const Contacts({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      currentIndex: 1,
      title: 'Contacts',
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Symbols.add),
      ),
      child: ListView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.all(16),
        children: [
          const Text('A'),
          ChatListTile(
            avatar: const NetworkImage(
              'https://lh3.googleusercontent.com/aida-public/AB6AXuBBLxQ7MlYVMHiddYAvrczjYwbpL_ukglDBYrH3Dh8JKBgTq7TJkRlLEMl9aXdjJgP5Ui-1c4ImjGM1D8PztNyrFZwexrATpI2zNgSaNdYP9XN2OzYKZA6THrL3Von6fX2WKo0WdAQzq5anbI08hl5-dAaE06xpqHQtq9djfMMTXaTKqSRF_iYTaNdHMkqYcU6B5CFlQtqamUh1xutRpsQS28p1rKmd4pWFCp4QTBwCKSiMT8Y6e34f',
            ),
            name: 'Alice Chen',
            message: 'Design Lead',
            time: '',
          ),
          ChatListTile(
            avatar: const NetworkImage(
              'https://lh3.googleusercontent.com/aida-public/AB6AXuBKCwYRkXjIqXALPnasRojnQLyMfdSnyliIdG0P7O5mfMSgBzDBL29O3uw4fTvQdtD9FQdLqFKfMwbSaqNzZcRFGACh8Gk4YwFU_TCSot2oi9m_7RRrS14U_d9JthzmX04Ch5X8JosUulWsq_xe9AWBdJ573brZ37YOK8JTs-9uRb6YfZYFKll7uSJduAplCigNgeCDW6uC8GJRcjx96vBvVF6948jKnpR_ow3a0UicX_PVaZHz7jje',
            ),
            name: 'Arthur Dent',
            message: 'Lats seen 2h ago',
            time: '',
          ),
          const Text('B'),
          ChatListTile(
            avatar: null,
            name: 'Bianca Perez',
            message: 'Typing...',
            time: '',
          ),
          const Text('E'),
          ChatListTile(
            avatar: const NetworkImage(
              'https://lh3.googleusercontent.com/aida-public/AB6AXuB7ExNXJX1WuNEihjhcqCv_vKM6UEoBesStgv4w5hOGVYF9kw6KFfOHWRkvBboJKRInBcdLhBYghz2PoyIK_vX3sDao2RU2PXcbyjZrwmTxTbISLemAiA6-zHboq1EBOYFT7YIYLp-H1j_2Rq6TBpMMXKdbSaNs5ukJouZ93ZwYW3mz3SO9EhaIJp3O2tXmULTLv9i432bZGQQFS4baQApKxLKhALsMq1Bf4Nlh-HwcQbVoUCog8gcS',
            ),
            name: 'Elias Thorne',
            message: 'Offline',
            time: '',
          ),
        ],
      ),
    );
  }
}
