import 'package:flutter/material.dart';
import 'package:flutter_vivid_presence/shared/app_scaffold.dart';
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
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Symbols.search),
                hintText: 'Search contacts...',
              ),
            ),
            FilledButton.tonalIcon(
              onPressed: () {},
              icon: const Icon(Symbols.sync),
              label: const Text('Sync Phone Contacts'),
            ),
            const Text('A'),
            ListTile(
              leading: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  CircleAvatar(
                    backgroundImage: const NetworkImage(
                      'https://lh3.googleusercontent.com/aida-public/AB6AXuBBLxQ7MlYVMHiddYAvrczjYwbpL_ukglDBYrH3Dh8JKBgTq7TJkRlLEMl9aXdjJgP5Ui-1c4ImjGM1D8PztNyrFZwexrATpI2zNgSaNdYP9XN2OzYKZA6THrL3Von6fX2WKo0WdAQzq5anbI08hl5-dAaE06xpqHQtq9djfMMTXaTKqSRF_iYTaNdHMkqYcU6B5CFlQtqamUh1xutRpsQS28p1rKmd4pWFCp4QTBwCKSiMT8Y6e34f',
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Theme.of(context).colorScheme.surface,
                    ),
                    child: Badge(
                      smallSize: 12,
                      backgroundColor: Theme.of(
                        context,
                      ).colorScheme.secondaryContainer,
                    ),
                  ),
                ],
              ),
              title: const Text('Alice Chen'),
              subtitle: const Text('Design Lead'),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: const NetworkImage(
                  'https://lh3.googleusercontent.com/aida-public/AB6AXuBKCwYRkXjIqXALPnasRojnQLyMfdSnyliIdG0P7O5mfMSgBzDBL29O3uw4fTvQdtD9FQdLqFKfMwbSaqNzZcRFGACh8Gk4YwFU_TCSot2oi9m_7RRrS14U_d9JthzmX04Ch5X8JosUulWsq_xe9AWBdJ573brZ37YOK8JTs-9uRb6YfZYFKll7uSJduAplCigNgeCDW6uC8GJRcjx96vBvVF6948jKnpR_ow3a0UicX_PVaZHz7jje',
                ),
              ),
              title: const Text('Arthur Dent'),
              subtitle: const Text('Lats seen 2h ago'),
            ),
            const Text('B'),
            ListTile(
              leading: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  CircleAvatar(child: const Text('BP')),
                  Container(
                    padding: const EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Theme.of(context).colorScheme.surface,
                    ),
                    child: Badge(
                      smallSize: 12,
                      backgroundColor: Theme.of(
                        context,
                      ).colorScheme.secondaryContainer,
                    ),
                  ),
                ],
              ),
              title: const Text('Bianca Perez'),
              subtitle: const Text('Typing...'),
            ),
            const Text('E'),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: const NetworkImage(
                  'https://lh3.googleusercontent.com/aida-public/AB6AXuB7ExNXJX1WuNEihjhcqCv_vKM6UEoBesStgv4w5hOGVYF9kw6KFfOHWRkvBboJKRInBcdLhBYghz2PoyIK_vX3sDao2RU2PXcbyjZrwmTxTbISLemAiA6-zHboq1EBOYFT7YIYLp-H1j_2Rq6TBpMMXKdbSaNs5ukJouZ93ZwYW3mz3SO9EhaIJp3O2tXmULTLv9i432bZGQQFS4baQApKxLKhALsMq1Bf4Nlh-HwcQbVoUCog8gcS',
                ),
              ),
              title: const Text('Elias Thorne'),
              subtitle: const Text('Offline'),
            ),
          ],
        ),
      ),
    );
  }
}
